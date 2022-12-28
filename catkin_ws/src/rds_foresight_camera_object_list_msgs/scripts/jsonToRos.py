#!/usr/bin/env python3

import argparse
from ctypes import sizeof
import os
import pandas as pd
import numpy as np
import sensor_msgs.point_cloud2 as pc_utils
from sensor_msgs.msg import PointCloud2
from geometry_msgs.msg import PointStamped
import rospy
import numpy as npcel
from rosbag import Bag
import json
from rds_foresight_camera_object_list_msgs.msg import BoundBox, Obstacle, Frames
import paho.mqtt.client as mqtt
import json
import ctypes

J_publisher = rospy.Publisher("/foresight_obstacles", Frames, queue_size=1)
rospy.init_node("Json_Foresight")
rate = rospy.Rate(66) # on hz

def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))
    client.subscribe("msq/o_res")

def on_message(client, userdata, msg):
    payload = str(msg.payload.decode("utf-8"))
    #payload1 = payload[1:]
    payload1 = payload.replace("nan", "0").replace("inf", "0")
    Frame = (json.loads(payload1))
    foresight_frame = Frames()
    Obstacles = (Frame["Obstacles"])
    foresight_frame.FrameIndex = Frame["FrameIndex"]
    foresight_frame.FrameTime = Frame["FrameTime"]
    foresight_frame.Sensor = Frame["Sensor"]

    if(len(Obstacles) != 0):
        for counter_obstacle in range(len(Obstacles)): # i est l'index qui permet de parcourir les diffirents obstacles d'une frame
            detected_object = Obstacle()
            BoundBox = (Frame["Obstacles"][counter_obstacle]["BoundBox"])
            detected_object.boundBox.BottomRightX = BoundBox["BottomRightX"]
            detected_object.boundBox.BottomRightY = BoundBox["BottomRightY"]
            detected_object.boundBox.TopLeftX = BoundBox["TopLeftX"]
            detected_object.boundBox.TopLeftY = BoundBox["TopLeftY"]
            detected_object.CenterX = Frame["Obstacles"][counter_obstacle]["CenterX"]
            detected_object.CenterY = Frame["Obstacles"][counter_obstacle]["CenterY"]
            detected_object.Class = Frame["Obstacles"][counter_obstacle]["Class"]
            detected_object.DangerLevel = Frame["Obstacles"][counter_obstacle]["DangerLevel"]
            detected_object.Distance = Frame["Obstacles"][counter_obstacle]["Distance"]
            detected_object.ID = Frame["Obstacles"][counter_obstacle]["ID"]
            detected_object.OnPath = Frame["Obstacles"][counter_obstacle]["OnPath"]
            detected_object.OnRoad = Frame["Obstacles"][counter_obstacle]["OnRoad"]
            detected_object.PositionX = Frame["Obstacles"][counter_obstacle]["PositionX"]
            detected_object.PositionY = Frame["Obstacles"][counter_obstacle]["PositionY"]
            detected_object.PositionZ = Frame["Obstacles"][counter_obstacle]["PositionZ"]
            detected_object.RealHeight = Frame["Obstacles"][counter_obstacle]["RealHeight"]
            detected_object.RealWidth = Frame["Obstacles"][counter_obstacle]["RealWidth"]
            detected_object.RelativeSpeed = Frame["Obstacles"][counter_obstacle]["RelativeSpeed"]
            detected_object.TTC = Frame["Obstacles"][counter_obstacle]["TTC"]
            foresight_frame.obstacles_array.append(detected_object)
            """
            if(Frame["Sensor"] == "Vis" and Frame["Obstacles"][counter_obstacle]["Class"] == "Pedestrian"):
                print(foresight_frame)
            """
    J_publisher.publish(foresight_frame)
    print(foresight_frame, "\n") #replace later by publish in realtime

    
client = mqtt.Client()
client.connect("192.168.1.2", 1883)
#client.connect("broker.emqx.io", 1883, 1)                 
client.on_connect = on_connect
client.on_message = on_message

client.loop_forever()
