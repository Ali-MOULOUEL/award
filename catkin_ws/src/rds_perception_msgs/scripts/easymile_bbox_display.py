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
from rds_perception_msgs.msg import tracking
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

    def __init__(self, center_point, orientation, markerShape, height, width, length, label, id=None):
        self.center_point = center_point
        self.orientation = orientation
        self.markerShape = markerShape
        self.height = height
        self.width = width
        self.length = length
        self.label = label
        if id is not None:
            self.id = id

def vizualize_bbox(bbox_array = []):
    """Publish a RViz-comaptible 'Box' marker matching the bounding box."""
    easymile_label_topic = 'easymile_boundingBox_label'
    easymile_bbox_topic = 'easymile_boundingBox'
    publisher = rospy.Publisher(easymile_bbox_topic, MarkerArray, queue_size=1)
    publisher_label = rospy.Publisher(easymile_label_topic, MarkerArray, queue_size=1)
    
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
        marker_label.pose.position.z = box.center_point[2] 
        marker_label.pose.orientation.x = 0
        marker_label.pose.orientation.y = 0
        marker_label.pose.orientation.z = 0
        marker_label.pose.orientation.w = 1
        marker_label.lifetime = rospy.Duration(secs=1/10)

        marker = Marker()
        marker.header.frame_id = FRAME_ID
        if box.markerShape == "CYLINDER":
            marker.type = marker.CYLINDER
        else:
            marker.type = marker.CUBE
        marker.id = box.id
        marker.scale.x = box.height
        marker.scale.y = box.width
        marker.scale.z = box.length
        marker.color.a = 0.4
        marker.color.r = 0.9
        marker.color.g = 0.5
        marker.color.b = 0.5
        marker.pose.position.x = box.center_point[0]
        marker.pose.position.y = box.center_point[1]
        marker.pose.position.z = box.center_point[2]
        marker.pose.orientation.x = box.orientation[0]
        marker.pose.orientation.y = box.orientation[1]
        marker.pose.orientation.z = box.orientation[2]
        marker.pose.orientation.w = box.orientation[3]
        marker.lifetime = rospy.Duration(secs=1/10)


        marker_label_array.markers.append(marker_label)
        marker_array.markers.append(marker)
    publisher.publish(marker_array)
    publisher_label.publish(marker_label_array)


def get_quaternion_from_euler(roll, pitch, yaw):

  qx = np.sin(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) - np.cos(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
  qy = np.cos(roll/2) * np.sin(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.cos(pitch/2) * np.sin(yaw/2)
  qz = np.cos(roll/2) * np.cos(pitch/2) * np.sin(yaw/2) - np.sin(roll/2) * np.sin(pitch/2) * np.cos(yaw/2)
  qw = np.cos(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
 
  return [qx, qy, qz, qw]

def objectClassification(x):
    return {
        0: "Invalid",
        1: "Unknown", 
        2: "Car",
        3: "Pedestrian",
        4: "Bike"
    }[x]

def markerType(x):
    return {
        0: "CYLINDER",
        1: "CUBE",  
    }[x]

def tracking_callback(msg):
    BB_ARRAY.clear()
    obstacles = np.array(list(msg.tracks))
    for obstacle in obstacles:

        if obstacle.axis_1x == 0:
            orientation = [0, 0, 0, 1]
        else:
            orientation = get_quaternion_from_euler(0, 0, math.atan(obstacle.axis_1y / obstacle.axis_1x))
            
        markerShape = markerType(obstacle.extent.extent)
        label = "EM_" + objectClassification(obstacle.label.label) +  str(obstacle.id)
        
        marker_center = (obstacle.box_center_x, obstacle.box_center_y, 0)

        marker_id = BoundingBox(marker_center,
                                orientation,
                                markerShape,
                                height=obstacle.dim1,
                                width=obstacle.dim2,
                                length=2.0,
                                label=label,    
                                id=obstacle.id)
        BB_ARRAY.append(marker_id)
    vizualize_bbox(BB_ARRAY)


if __name__ == "__main__":
    FRAME_ID="vehicle"
    BB_ARRAY = []
    rospy.init_node("EasyMileObstaclesTracking", anonymous=True)
    rospy.Subscriber("tracks", tracking, tracking_callback)
    rospy.spin()
    

