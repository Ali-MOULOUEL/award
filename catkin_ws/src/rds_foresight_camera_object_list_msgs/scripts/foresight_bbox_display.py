#!/usr/bin/env python3
import argparse
import os
import pandas as pd
import numpy as np
import sensor_msgs.point_cloud2 as pc_utils
from sensor_msgs.msg import PointCloud2
from geometry_msgs.msg import PointStamped
import rospy
import numpy as np
from rosbag import Bag
import matplotlib.pyplot as plt
from visualization_msgs.msg import Marker, MarkerArray
from PointcloudPublisher import publish_pointcloud, rotation, translation
from tf import TransformListener
from operator import add
import math
from rds_foresight_camera_object_list_msgs.msg import Frames
from decimal import *



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

def vizualize_bbox(bbox_array = []):
    """Publish a RViz-comaptible 'Box' marker matching the bounding box."""
    foresight_label_topic = 'foresight_boundingBox_label'
    foresight_bbox_topic = 'foresight_boundingBox'
    publisher = rospy.Publisher(foresight_bbox_topic, MarkerArray, queue_size=1)
    publisher_label = rospy.Publisher(foresight_label_topic, MarkerArray, queue_size=1)
    print("ENTERED THE VIS FUNCTION")
    
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
        marker_label.color.a = 1
        marker_label.color.r = 1
        marker_label.color.g = 1
        marker_label.color.b = 1
        marker_label.pose.position.x = box.center_point[0]
        marker_label.pose.position.y = box.center_point[1]
        marker_label.pose.position.z = box.center_point[2] + box.half_height + 0.1
        marker_label.pose.orientation.x = 0
        marker_label.pose.orientation.y = 0
        marker_label.pose.orientation.z = 0
        marker_label.pose.orientation.w = 1
        marker_label.lifetime = rospy.Duration(secs=1/20)


        marker = Marker()
        marker.header.frame_id = FRAME_ID
        marker.type = marker.CYLINDER
        marker.id = box.id
        marker.scale.x = 2 * box.half_width
        marker.scale.y = 2 * box.half_width
        marker.scale.z = 2 * box.half_height
        marker.color.a = 0.8
        marker.color.r = 0
        marker.color.g = 0.5
        marker.color.b = 1
        marker.pose.position.x = box.center_point[0]
        marker.pose.position.y = box.center_point[1]
        marker.pose.position.z = box.center_point[2]
        marker.pose.orientation.x = -0.5 
        marker.pose.orientation.y = 0.5
        marker.pose.orientation.z = 0.5
        marker.pose.orientation.w = 0.5
        marker.lifetime = rospy.Duration(secs=1/20)


        marker_label_array.markers.append(marker_label)
        marker_array.markers.append(marker)
    publisher.publish(marker_array)
    publisher_label.publish(marker_label_array)

def translation_foresight(x, y, z):
    return list(map(add, [x, y, z],  [2.775, 0.2, 0.948]))

def rotation_foresight(z, y, pitch):
    PositionZ = z * math.cos(math.radians(pitch))
    PositionY = y * math.cos(math.radians(pitch))
    return[PositionZ, PositionY]

def foresight_callback(msg):
    print("ENTERED FORESIGHT CALLBACK")
    BB_ARRAY.clear()
    number_of_obstacles = len(msg.obstacles_array)
    if number_of_obstacles:
        obstacles_array = np.array(list(vis_object for vis_object in msg.obstacles_array if msg.Sensor == "Vis"))
        for id, obstacle in enumerate(obstacles_array): 

            #Change the camera axis to match the vehicle axis 

            """
            x =  obstacle.PositionZ             
            y = -obstacle.PositionX      
            z = -obstacle.PositionY
            """
            x = obstacle.PositionX 
            y = obstacle.PositionY
            z = obstacle.PositionZ


            marker_center_vf = (x, y, z)
            marker_height = obstacle.RealHeight
            marker_width = obstacle.RealWidth
            label = obstacle.Class

            string_value = "FC_" + label + "_" + str(obstacle.ID)
    
            marker_id = BoundingBox(marker_center_vf,
                                        height=marker_height,
                                        width=marker_width,
                                        length=2,
                                        label = string_value,    
                                        id=id)
            BB_ARRAY.append(marker_id)
        vizualize_bbox(BB_ARRAY)

if __name__ == "__main__":
    FRAME_ID="foresight_camera"
    BB_ARRAY = []
    rospy.init_node("ForesightObstaclesDetection", anonymous=True)
    rospy.Subscriber("foresight_obstacles", Frames, foresight_callback)
    rospy.spin()
    

