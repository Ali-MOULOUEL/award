#!/usr/bin/env python3
import os
import pandas as pd
import numpy as np
import math
import sensor_msgs.point_cloud2 as pc_utils
from sensor_msgs.msg import PointCloud2
from geometry_msgs.msg import PointStamped
import rospy
import numpy as npcel
from rosbag import Bag
import matplotlib.pyplot as plt
from visualization_msgs.msg import Marker, MarkerArray
from PointcloudPublisher import publish_pointcloud, rotation, translation
from tf import TransformListener
from rds_conti_radar_object_list_msgs.msg import RadarObjectList 

def msgToPointcloud(msg):
    """Read pointcloud as numpy array."""
    pointcloud = np.array(list(pc_utils.read_points(msg)))
    return pointcloud

def grandFilter(pc, z):
        selector = pc[:,2] > z
        return pc[selector]

class BoundingBox:
    """BoundingBox object to be applied to one or more pointclounds."""

    def __init__(self, center_point, height, width, length, label, id=None):
        self.center_point = center_point
        self.half_height = height / 2
        self.half_width = width / 2
        self.half_length = length / 2
        self.label = label
        if id is not None:
            self.id = id
            #self.vizualize()

    def filter(self, pointcloud):
        """Apply bounding box filter to a numpy-formatted pointclound."""
        box_locator = np.logical_and.reduce(
            # distance(y,c_y) < box_width/2
            (np.abs(pointcloud[:, 0] - self.center_point[0]) < self.half_length,
             # distance(x,c_x) < box_length/2
             np.abs(pointcloud[:, 1] - self.center_point[1]) < self.half_width,
             # distance(z,c_z) < box_height/2
             np.abs(pointcloud[:, 2] - self.center_point[2]) < self.half_height))
        return pointcloud[box_locator]

def vizualize_bbox(bbox_array = []):
    """Publish a RViz-comaptible 'Box' marker matching the bounding box."""
    #topic = 'boundingBox_{}'.format(BB.id)
    conti_label_topic = 'conti_boundingBox_label'
    conti_bbox_topic = 'conti_boundingBox'
    publisher = rospy.Publisher(conti_bbox_topic, MarkerArray, queue_size=1)
    publisher_label = rospy.Publisher(conti_label_topic, MarkerArray, queue_size=1)
    
    marker_label_array = MarkerArray()
    marker_array = MarkerArray()
    
    for box in bbox_array:
        marker_label = Marker()
        marker_label.id = box.id 
        marker_label.header.frame_id = FRAME_ID
        marker_label.type = marker_label.TEXT_VIEW_FACING
        marker_label.text = box.label
        marker_label.scale.x = 0.5
        marker_label.scale.y = 0.5
        marker_label.scale.z = 0.5
        marker_label.color.a = 1.0
        marker_label.color.r = 1.0
        marker_label.color.g = 1.0
        marker_label.color.b = 1.0
        marker_label.pose.position.x = box.center_point[0]
        marker_label.pose.position.y = box.center_point[1]
        marker_label.pose.position.z = box.center_point[2] + box.half_height + 0.2
        marker_label.lifetime = rospy.Duration(secs=1/15)
        
        marker = Marker()
        marker.header.frame_id = FRAME_ID
        marker.lifetime = rospy.Duration(secs=1/15)
        marker.type = marker.CUBE
        marker.id = box.id
        marker.scale.x = 2 * box.half_width
        marker.scale.y = 2 * box.half_width
        marker.scale.z = 2 * box.half_height
        marker.color.a = 0.8
        marker.color.r = 1.0
        marker.color.g = 1.0
        marker.color.b = 1.0
        marker.pose.position.x = box.center_point[0]
        marker.pose.position.y = box.center_point[1]
        marker.pose.position.z = box.center_point[2]
        #orientation?
        marker_label_array.markers.append(marker_label)
        marker_array.markers.append(marker)
    publisher.publish(marker_array)
    publisher_label.publish(marker_label_array)

def conti_callback(msg):
    """

       L*   *T          The data recieved from continental does not provide directly the coordinates of a              
        |               BB. They provide the relative positions/distances of (L, M, and R) from 2D top view wrt the point P. 
        |\              Note that P is not necessarly the geometric center of the box. So we would have to compute
        | \*P           the coordinates of the box's center along with its edges width and depth (we will select a
        | /\            constant height going from the ground level for the sake of illustartion since data is provided in 2D).
        |/__\           The reference frame of conti is the same as the vehicle frame(x to the front, y to the left).
      M*    *R          For the variables below consider the naming "PL" as a vector and "PL_x" as its x component etc.

    """
    BB_ARRAY.clear()
    conti_obj_array = np.array(list(msg.RadarObjectArray))
    # Since conti send us arrays of size 62, we are only interested in none-zero entries that happen to have an 
    # InternalId different than zero
    conti_non_zero_obj_array = np.array(list(conti_obj for conti_obj_counter, conti_obj in enumerate(conti_obj_array) if conti_obj_counter < msg.NofUsedObjects))
    #print(conti_filtered_obj_array)
    #print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
    print("NUMBER OF USED OBJ = ", msg.NofUsedObjects)

    for obstacle in conti_non_zero_obj_array:
        P_x = obstacle.DistX
        P_y = obstacle.DistY
        PL_x = obstacle.LDeltaX_left
        PL_y = obstacle.LDeltaY_left
        PM_x = obstacle.LDeltaX_mid
        PM_y = obstacle.LDeltaY_mid
        PR_x = obstacle.LDeltaX_right
        PR_y = obstacle.LDeltaY_right
        L_x = P_x + PL_x
        L_y = P_y + PL_y
        V_abs_x = obstacle.VabsX
        V_abs_y = obstacle.VabsY
        V_abs = math.sqrt(pow(V_abs_x,2)+pow(V_abs_y,2))
        V_abs = round(V_abs, 3)
        print(V_abs, '######################################')
        print("L coords = (", L_x, ", ", L_y, ")")
        M_x = P_x + PM_x
        M_y = P_y + PM_y
        print("M coords = (", M_x, ", ", M_y, ")")
        R_x = P_x + PR_x
        R_y = P_y + PR_y
        print("R coords = (", R_x, ", ", R_y, ")")
        T_x = L_x + (R_x - M_x)
        T_y = L_y + (R_y - M_y)
        print("T coords = (", T_x, ", ", T_y, ")")
        bb_center_x = (L_x + R_x )/2
        bb_center_y = (L_y + R_y)/2
        print("BOX Center = (", bb_center_x, ", ", bb_center_y, ")")
        marker_height = 1
        marker_width = abs(R_y - M_y)
        marker_length = abs(L_x - M_x)
        marker_center_x = bb_center_x
        marker_center_y = bb_center_y
        marker_center_z = marker_height/2
        marker_id = "CONTI_" + str(obstacle.InternalId) + "\nS=" + str(V_abs)
        marker_id = BoundingBox(center_point=(marker_center_x,marker_center_y,marker_center_z),
                                    height=marker_height,
                                    width=marker_width,
                                    length=marker_length,
                                    label = marker_id,
                                    id=obstacle.InternalId)

        BB_ARRAY.append(marker_id)
    vizualize_bbox(BB_ARRAY)
    
if __name__ == "__main__":
    #The reference frame of Continental is at the center of the rear wheels axis (same as the EM vehicle frame)
    # -> No transformation needed 
    FRAME_ID="vehicle"
    BB_ARRAY=[]
    #TOPICS=["/conti_radar_objects_deserialized", "/scan_vlp32_front"]
    #FRAME_ID="vlp32_front"
    rospy.init_node("ContinentalObstaclesBBVis", anonymous=True)
    rospy.Subscriber("conti_radar_objects_deserialized", RadarObjectList, conti_callback)
    rospy.spin()