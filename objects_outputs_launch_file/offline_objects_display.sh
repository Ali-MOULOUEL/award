#!/bin/bash
gnome-terminal -- bash -c 'roscore; exec bash'
gnome-terminal -- bash -c 'rosbag play '$1'; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && rosrun rds_foresight_camera_object_list_msgs foresight_tf_broadcaster.py; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && rosrun rds_foresight_camera_object_list_msgs foresight_bbox_display.py; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && rosrun rds_conti_radar_object_list_msgs conti_bbox_display.py; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && rosrun rds_perception_msgs easymile_bbox_display.py; exec bash'
gnome-terminal -- bash -c 'rosrun rviz rviz -d /home/project/award/rviz_configuration/ObejctsOutput.rviz; exec bash'

while true; do
  sleep 1
done
