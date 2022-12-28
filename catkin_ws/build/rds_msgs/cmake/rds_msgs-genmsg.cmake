# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rds_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Irds_msgs:/home/project/award/catkin_ws/src/rds_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rds_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg" "rds_msgs/error"
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg" "rds_msgs/ability:rds_msgs/emergency_stop_root_cause:rds_msgs/motion:rds_msgs/start_mission_state:rds_msgs/safety_chain_state:std_msgs/Header:rds_msgs/error:rds_msgs/drive_mode"
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg" "geometry_msgs/Point:rds_msgs/gnss_mode:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:geometry_msgs/Quaternion:rds_msgs/localization_gnss_detail:std_msgs/Header"
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg" NAME_WE)
add_custom_target(_rds_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_msgs" "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/gnss_mode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss_detail.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)
_generate_msg_cpp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rds_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rds_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rds_msgs_generate_messages rds_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_cpp _rds_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_msgs_gencpp)
add_dependencies(rds_msgs_gencpp rds_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/gnss_mode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss_detail.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)
_generate_msg_eus(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(rds_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rds_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rds_msgs_generate_messages rds_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_eus _rds_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_msgs_geneus)
add_dependencies(rds_msgs_geneus rds_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/gnss_mode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss_detail.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)
_generate_msg_lisp(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rds_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rds_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rds_msgs_generate_messages rds_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_lisp _rds_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_msgs_genlisp)
add_dependencies(rds_msgs_genlisp rds_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/gnss_mode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss_detail.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)
_generate_msg_nodejs(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rds_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rds_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rds_msgs_generate_messages rds_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_nodejs _rds_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_msgs_gennodejs)
add_dependencies(rds_msgs_gennodejs rds_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/gnss_mode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss_detail.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)
_generate_msg_py(rds_msgs
  "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rds_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rds_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rds_msgs_generate_messages rds_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/error.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/safety_chain_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/start_mission_state.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/motion.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/drive_mode.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/ability.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/emergency_stop_root_cause.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_vehicle_state_common.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/localization_gnss.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/msg_novatel_bestpos.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_msgs/msg/command_car.msg" NAME_WE)
add_dependencies(rds_msgs_generate_messages_py _rds_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_msgs_genpy)
add_dependencies(rds_msgs_genpy rds_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rds_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rds_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rds_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rds_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rds_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rds_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rds_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rds_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rds_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rds_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
