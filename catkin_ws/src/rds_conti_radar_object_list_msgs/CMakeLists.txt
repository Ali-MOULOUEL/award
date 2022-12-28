cmake_minimum_required(VERSION 2.8.3)
project(rds_conti_radar_object_list_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_message_files(
  FILES
  RadarObject.msg
  DynamicProperty.msg
  LDeltaQual.msg
  ObjState.msg
  ObjProvidedKinematicStates.msg
  RadarObjectList.msg
  MsgHeader.msg
  SensorMsgHeader.msg
  SignalStatus.msg
  Time.msg
  TimeStampSource.msg
  TimeStampSyncState.msg
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
  scripts/conti_subscriber_offline.py
  scripts/conti_bbox_display.py
  scripts/tf_broadcaster.py
  scripts/tf_listener.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
