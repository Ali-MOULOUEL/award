# Install script for directory: /home/project/award/catkin_ws/src/rds_navigation_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_navigation_msgs/msg" TYPE FILE FILES "/home/project/award/catkin_ws/src/rds_navigation_msgs/msg/IntersectionZone.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_navigation_msgs/action" TYPE FILE FILES "/home/project/award/catkin_ws/src/rds_navigation_msgs/action/AskClear.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_navigation_msgs/msg" TYPE FILE FILES
    "/home/project/award/catkin_ws/devel/share/rds_navigation_msgs/msg/AskClearAction.msg"
    "/home/project/award/catkin_ws/devel/share/rds_navigation_msgs/msg/AskClearActionGoal.msg"
    "/home/project/award/catkin_ws/devel/share/rds_navigation_msgs/msg/AskClearActionResult.msg"
    "/home/project/award/catkin_ws/devel/share/rds_navigation_msgs/msg/AskClearActionFeedback.msg"
    "/home/project/award/catkin_ws/devel/share/rds_navigation_msgs/msg/AskClearGoal.msg"
    "/home/project/award/catkin_ws/devel/share/rds_navigation_msgs/msg/AskClearResult.msg"
    "/home/project/award/catkin_ws/devel/share/rds_navigation_msgs/msg/AskClearFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/project/award/catkin_ws/build/rds_navigation_msgs/catkin_generated/installspace/rds_navigation_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_navigation_msgs/cmake" TYPE FILE FILES
    "/home/project/award/catkin_ws/build/rds_navigation_msgs/catkin_generated/installspace/rds_navigation_msgsConfig.cmake"
    "/home/project/award/catkin_ws/build/rds_navigation_msgs/catkin_generated/installspace/rds_navigation_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rds_navigation_msgs" TYPE FILE FILES "/home/project/award/catkin_ws/src/rds_navigation_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rds_navigation_msgs" TYPE PROGRAM FILES "/home/project/award/catkin_ws/src/rds_navigation_msgs/scripts/easymile_bbox_display.py")
endif()

