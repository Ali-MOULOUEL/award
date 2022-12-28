cmake_minimum_required(VERSION 2.8.3)
project(rds_perception_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_message_files(
  FILES
  extent.msg
  label.msg
  track.msg
  tracking.msg

  IntersectionZone.msg

  label.msg
  )

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(PROGRAMS
  scripts/easymile_bbox_display.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
