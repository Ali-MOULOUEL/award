#!/usr/bin/env python3
import argparse
import os
from poplib import error_proto
import pandas as pd
import rospy
import numpy as np
from rosbag import Bag
import matplotlib.pyplot as plt
from sensor_msgs.msg import PointCloud
from rds_msgs.msg import msg_vehicle_state_common
import yaml


def callback(msg):
    if(msg.emergency_stop_root_causes.causes == []):
        print("No Root Emergency causes")
    else:
       for error in range(len(msg.emergency_stop_root_causes.causes)):
           category = msg.emergency_stop_root_causes.causes[error].category
           value = msg.emergency_stop_root_causes.causes[error].value

           with open("/home/project/foresight/catkin_ws/src/rds_msgs/components/" + str(category) + ".yaml", "r") as stream:
                try:
                    docs = yaml.safe_load(stream)
                    print(docs["errors"][value]["msg"])
                    print(yaml.safe_load(stream))
                except yaml.YAMLError as exc:
                    print(exc)

if __name__ == "__main__":
    rospy.init_node("Analyse", anonymous=True)
    rospy.Subscriber("/vehicle_state_common", msg_vehicle_state_common, callback)
    rospy.spin()