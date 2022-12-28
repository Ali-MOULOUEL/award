cmake_minimum_required(VERSION 2.8.3)
project(rds_navigation_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  geometry_msgs
  actionlib_msgs
)

add_message_files(
  FILES
  IntersectionZone.msg
  #label.msg
  )

add_action_files(
  DIRECTORY action
  FILES 
  AskClear.action
  )

catkin_package(
  CATKIN_DEPENDS message_runtime
  actionlib_msgs
  geometry_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(PROGRAMS
  scripts/easymile_bbox_display.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
