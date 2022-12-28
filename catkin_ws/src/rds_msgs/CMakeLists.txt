cmake_minimum_required(VERSION 2.8.3)
project(rds_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  geometry_msgs
)

add_message_files(
  FILES
  error.msg
  safety_chain_state.msg
  start_mission_state.msg
  motion.msg
  drive_mode.msg
  ability.msg
  emergency_stop_root_cause.msg
  msg_vehicle_state_common.msg

  localization_gnss.msg

  msg_novatel_bestpos.msg

  command_car.msg
  )

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(PROGRAMS
  scripts/analyse.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
