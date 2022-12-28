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
from rds_foresight_camera_object_list_msgs.msg import Frames, Obstacle, BoundBox

if __name__ == "__main__":
    rospy.init_node("Calibration", anonymous=True)
    counter_frame = 0
    counter_obstacle = 0

    publisher = rospy.Publisher("foresight_obstacles", Frames, queue_size=1)
    frame_to_send = Frames()

    with open('/home/project/foresight/catkin_ws/src/rds_foresight_camera_object_list_msgs/scripts/VIS_ClassifierStereo.json') as f:
        data = json.load(f)
    while(1):
        received_Frames = (data["Frames"][3])
        Obstacles = received_Frames["Obstacles"]
        FrameIndex = received_Frames["FrameIndex"]
        FrameTime = received_Frames["FrameTime"]
        sensor = received_Frames["Sensor"]
        if(Obstacles == []):
            print("No object detected : ", Obstacles)

        else:
            for i in range(len(Obstacles)): # i est l'index qui permet de parcourir les diffirents obstacles d'une frame
                if sensor == "Vis":
                    BoundBox = (received_Frames["Obstacles"][counter_obstacle]["BoundBox"])
                    BottomRightX = BoundBox["BottomRightX"]
                    BottomRightY = BoundBox["BottomRightY"]
                    TopLeftX = BoundBox["TopLeftX"]
                    TopLeftY = BoundBox["TopLeftY"]
                    CenterX = received_Frames["Obstacles"][counter_obstacle]["CenterX"] 
                    CenterY = received_Frames["Obstacles"][counter_obstacle]["CenterY"]
                    Class = received_Frames["Obstacles"][counter_obstacle]["Class"]            
                    DangerLevel = received_Frames["Obstacles"][counter_obstacle]["DangerLevel"]            
                    Distance = received_Frames["Obstacles"][counter_obstacle]["Distance"]
                    ID = received_Frames["Obstacles"][counter_obstacle]["ID"]            
                    OnPath = received_Frames["Obstacles"][counter_obstacle]["OnPath"]            
                    OnRoad = received_Frames["Obstacles"][counter_obstacle]["OnRoad"]            
                    PositionX = received_Frames["Obstacles"][counter_obstacle]["PositionX"]            
                    PositionY = received_Frames["Obstacles"][counter_obstacle]["PositionY"]   
                    PositionZ = received_Frames["Obstacles"][counter_obstacle]["PositionZ"]
                    RealHeight = received_Frames["Obstacles"][counter_obstacle]["RealHeight"]
                    RealWidth = received_Frames["Obstacles"][counter_obstacle]["RealWidth"]
                    RelativeSpeed = received_Frames["Obstacles"][counter_obstacle]["RelativeSpeed"]
                    TTC = received_Frames["Obstacles"][counter_obstacle]["TTC"]


                    frame_to_send.FrameIndex = FrameIndex
                    frame_to_send.FrameTime = FrameTime
                    frame_to_send.Sensor = sensor

                    obstacle = Obstacle()
                    obstacle.CenterX = CenterX
                    obstacle.CenterY = CenterY
                    obstacle.Class = Class
                    obstacle.DangerLevel = DangerLevel
                    obstacle.Distance = Distance
                    obstacle.ID = ID 
                    obstacle.OnPath = OnPath
                    obstacle.OnRoad = OnRoad
                    obstacle.CenterX = CenterX
                    obstacle.PositionX = PositionX
                    obstacle.PositionY = PositionY
                    obstacle.PositionZ = PositionZ
                    obstacle.RealHeight = RealHeight
                    obstacle.RealWidth = RealWidth
                    obstacle.RelativeSpeed = RelativeSpeed
                    obstacle.TTC = TTC

                    frame_to_send.obstacles_array.append(obstacle)
                    
                    print(frame_to_send)
                    publisher.publish(frame_to_send)

                counter_obstacle = counter_obstacle + 1
        counter_obstacle = 0                     #Reset the counter of the object outputs
        counter_frame = counter_frame + 1          #Incremente the counter of the frame 

    