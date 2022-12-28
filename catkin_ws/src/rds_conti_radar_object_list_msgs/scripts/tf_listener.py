#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import tf2_ros

if __name__ == '__main__':
    
    rospy.init_node('tf_listener')
    # A buffer connects to TF in order to look or connect to a selected frame
    #then we use the lookup_transform we use to select what frame we want to connect to.
    tfBuffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tfBuffer)


    loop_rate = rospy.Rate(10)
    transform = None 
    while not rospy.is_shutdown():
        try:
            #transformation = tfBuffer.lookup_transform(frame1, frame2, time_of_transform) 
            transform = tfBuffer.lookup_transform('continental', 'vlp32_front', rospy.Time())
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            loop_rate.sleep()
            continue

        rospy.loginfo("Transformation from conti to vlp32_front : ")
        rospy.loginfo("Translation = (%f, %f, %f)", transform.transform.translation.x, transform.transform.translation.y, transform.transform.translation.z)

        loop_rate.sleep()

