#!/bin/bash
gnome-terminal -- bash -c 'cd /home/project/award/rdos_vpn && sudo openvpn --config rdos-21.06-latest-maintenance-no-internet.ovpn; exec bash'
gnome-terminal -- bash -c 'cd /opt/foresight/bin && export LD_LIBRARY_PATH=/opt/foresight/lib/ && ./set_ip_local -remote 192.168.1.2 -local 192.168.1.1; exec bash'
gnome-terminal -- bash -c 'cd /opt/foresight/bin && export LD_LIBRARY_PATH=/opt/foresight/lib/ && ./camera_send_obstacles -remote 192.168.1.2 -use 90_deg 1 -flip_ir_camera 1; exec bash'    
gnome-terminal -- bash -c 'echo "192.168.0.101 tractez-v2-core" | sudo tee -a /etc/hosts && echo "192.168.14.102 tractez-v2-gui" | sudo tee -a /etc/hosts && echo "192.168.11.105 tractez-v2-vision" | sudo tee -a /etc/hosts; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && export ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.241.121 && rosrun rds_foresight_camera_object_list_msgs jsonToRos.py; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && export ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.241.121 && rosrun rds_foresight_camera_object_list_msgs foresight_tf_broadcaster.py; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && export ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.241.121 && rosrun rds_foresight_camera_object_list_msgs foresight_bbox_display.py; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && export ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.241.121 && rosrun rds_conti_radar_object_list_msgs conti_bbox_display.py; exec bash'
gnome-terminal -- bash -c 'cd /home/project/award/catkin_ws/ && source devel/setup.bash && export ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.241.121 && rosrun rds_perception_msgs easymile_bbox_display.py; exec bash'
gnome-terminal -- bash -c 'ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.241.121 && rosrun rviz rviz -d /home/project/award/rviz_configuration/ObejctsOutput.rviz; exec bash'

while true; do
  sleep 1
done
