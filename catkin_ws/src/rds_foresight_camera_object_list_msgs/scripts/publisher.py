#!/usr/bin/env python3

import paho.mqtt.client as mqtt
import json
from time import sleep

counter_frame = 0
with open('/home/project/foresight/catkin_ws/src/rds_foresight_camera_object_list_msgs/scripts/example.json') as f:
    data = json.load(f)

client = mqtt.Client("Objects_output")      
client.connect("broker.emqx.io", 1883, 1)


while(1):
    Frame = (data["Frames"][counter_frame])
    objects_output = json.dumps(Frame, indent=2)
    client.publish("msq/o_res", objects_output) 
    counter_frame+=1
    print(objects_output)
    #sleep(0.033)
    sleep(3)