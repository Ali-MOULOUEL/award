#!/usr/bin/env python
import argparse
import os
import pandas as pd
import numpy as np
import sensor_msgs.point_cloud2 as pc_utils
from sensor_msgs.msg import PointCloud2
from geometry_msgs.msg import PointStamped
import rospy
import numpy as npcel
from rosbag import Bag
import matplotlib.pyplot as plt
from visualization_msgs.msg import Marker, MarkerArray
#from PointcloudPublisher import publish_pointcloud, rotation, translation
from tf import TransformListener

def parse_args():                                   
    parser = argparse.ArgumentParser()
    parser.add_argument("bag", type=str)
    return parser.parse_args()

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
    foresight_label_topic = 'foresight_boundingBox_label'
    foresight_bbox_topic = 'foresight_boundingBox'
    publisher = rospy.Publisher(foresight_bbox_topic, MarkerArray, queue_size=1)
    publisher_label = rospy.Publisher(foresight_label_topic, MarkerArray, queue_size=1)
    
    marker_label_array = MarkerArray()
    marker_array = MarkerArray()
    
    for box in bbox_array:
        marker_label = Marker()
        marker_label.id = box.id 
        marker_label.header.frame_id = FRAME_ID
        marker_label.type = marker_label.TEXT_VIEW_FACING
        marker_label.text = box.label
        marker_label.scale.x = 0.3
        marker_label.scale.y = 0.3
        marker_label.scale.z = 0.3
        marker_label.color.a = 0.4
        marker_label.color.r = 0.9
        marker_label.color.g = 0.5
        marker_label.color.b = 0.5
        marker_label.pose.position.x = box.center_point[0]
        marker_label.pose.position.y = box.center_point[1]
        marker_label.pose.position.z = box.center_point[2] + box.half_height

        marker = Marker()
        marker.header.frame_id = FRAME_ID
        marker.type = marker.CYLINDER
        marker.id = box.id
        marker.scale.x = 2 * box.half_width
        marker.scale.y = 2 * box.half_width
        marker.scale.z = 2 * box.half_height
        marker.color.a = 0.4
        marker.color.r = 0.9
        marker.color.g = 0.5
        marker.color.b = 0.5
        marker.pose.position.x = box.center_point[0]
        marker.pose.position.y = box.center_point[1]
        marker.pose.position.z = box.center_point[2]

        marker_label_array.markers.append(marker_label)
        marker_array.markers.append(marker)
    publisher.publish(marker_array)
    publisher_label.publish(marker_label_array)

if __name__ == "__main__":
    
    args = parse_args()
    print(args.bag)
    BAG_FILE=args.bag
    TOPICS=["/foresight_obstacles"]
    FRAME_ID="foresight"
    BB_ARRAY=[]
    # Extract bag name : basename() give the file name from a full path
	#                    filename[:-4] remove the last 4 character ('.bag') 
    bag_name = os.path.basename(args.bag)[:-4]
    print(bag_name)

    bag_data = Bag(BAG_FILE)
    
    rospy.init_node("ForesightObstaclesDetection", anonymous=True)
    listener = TransformListener()
    
    for topic, msg, t in bag_data.read_messages(topics=TOPICS):
        number_of_obstacles = len(msg.obstacles_array)
        foresight_bb_counter = 0
        if(number_of_obstacles):
            for obstacle in range(number_of_obstacles):
                foresight_bb_counter+=1
                marker_center_x = msg.obstacles_array[obstacle].PositionX
                print("Number of obst =", number_of_obstacles)
                marker_center_y = msg.obstacles_array[obstacle].PositionY
                marker_center_z = msg.obstacles_array[obstacle].PositionZ
                marker_height = msg.obstacles_array[obstacle].RealHeight
                marker_width = msg.obstacles_array[obstacle].RealWidth
                marker_id = msg.obstacles_array[obstacle].Class
                marker_id = BoundingBox(center_point=(marker_center_x,marker_center_y,marker_center_z),
                                            height=marker_height,
                                            width=marker_width,
                                            length=2,
                                            label = marker_id,
                                            id=obstacle)
                print(msg)
                BB_ARRAY.append(marker_id)
                #print(msg)
                #print(number_of_obstacles)
                #print(msg.obstacles_array[0].ID)
        if(foresight_bb_counter == number_of_obstacles):
            vizualize_bbox(BB_ARRAY)
            #rospy.sleep(0.5)
    #publisher_foresight_bbox_data = rospy.Publisher("/ForesightObstaclesDetection/bbox_data", PointCloud2, queue_size=1)
    #publisher_transformed = rospy.Publisher("/ForkDetection/transformed", PointCloud2, queue_size=1)