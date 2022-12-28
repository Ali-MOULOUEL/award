#!/usr/bin/env python               
# -*- coding: utf-8 -*-

import rospy
import tf2_ros
import tf
import tf2_msgs.msg
from geometry_msgs.msg import TransformStamped
from rds_foresight_camera_object_list_msgs.msg import Frames

def foresight_tf_callback(msg):
    print("Foresight TF Broadcasting")
    broadcaster = tf.TransformBroadcaster()
    broadcaster.sendTransform((2.775, 0.2, 0.948), (0.5, -0.5, 0.5, -0.5), rospy.Time.now(), "foresight_camera", "vehicle")
    print(rospy.Time.now())                            
if __name__ == '__main__':
    rospy.init_node("tf_broadcaster")
    rospy.Subscriber("foresight_obstacles", Frames, foresight_tf_callback)
    rospy.spin()

    # rotation par rapport à X :  0.7071068, 0, 0, 0.7071068
    # rotation par rapport à Y : 0, 0.7071068, 0, 0.7071068
    # rotation par rapport à Z : 0, 0, 0.7071068, 0.7071068
    # rotation par rapport à -Z : 0, 0, -0.7071068, 0.7071068

    # La bonne rotation c'est -90 sur Z et 90 sur Y