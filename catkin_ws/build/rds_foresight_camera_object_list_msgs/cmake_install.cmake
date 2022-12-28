# Install script for directory: /home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/project/award/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_foresight_camera_object_list_msgs/msg" TYPE FILE FILES
    "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
    "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
    "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_foresight_camera_object_list_msgs/cmake" TYPE FILE FILES "/home/project/award/catkin_ws/build/rds_foresight_camera_object_list_msgs/catkin_generated/installspace/rds_foresight_camera_object_list_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/project/award/catkin_ws/devel/include/rds_foresight_camera_object_list_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/project/award/catkin_ws/devel/share/roseus/ros/rds_foresight_camera_object_list_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/project/award/catkin_ws/devel/share/common-lisp/ros/rds_foresight_camera_object_list_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/project/award/catkin_ws/devel/share/gennodejs/ros/rds_foresight_camera_object_list_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/project/award/catkin_ws/devel/lib/python3/dist-packages/rds_foresight_camera_object_list_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/project/award/catkin_ws/devel/lib/python3/dist-packages/rds_foresight_camera_object_list_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/project/award/catkin_ws/build/rds_foresight_camera_object_list_msgs/catkin_generated/installspace/rds_foresight_camera_object_list_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_foresight_camera_object_list_msgs/cmake" TYPE FILE FILES "/home/project/award/catkin_ws/build/rds_foresight_camera_object_list_msgs/catkin_generated/installspace/rds_foresight_camera_object_list_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_foresight_camera_object_list_msgs/cmake" TYPE FILE FILES
    "/home/project/award/catkin_ws/build/rds_foresight_camera_object_list_msgs/catkin_generated/installspace/rds_foresight_camera_object_list_msgsConfig.cmake"
    "/home/project/award/catkin_ws/build/rds_foresight_camera_object_list_msgs/catkin_generated/installspace/rds_foresight_camera_object_list_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_foresight_camera_object_list_msgs" TYPE FILE FILES "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rds_foresight_camera_object_list_msgs" TYPE PROGRAM FILES
    "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/scripts/foresight_subscriber.py"
    "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/scripts/foresight_tf_broadcaster.py"
    "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/scripts/foresight_bbox_display.py"
    )
endif()

