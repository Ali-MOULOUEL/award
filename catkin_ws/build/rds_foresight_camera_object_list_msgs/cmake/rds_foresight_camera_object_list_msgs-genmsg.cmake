# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rds_foresight_camera_object_list_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Irds_foresight_camera_object_list_msgs:/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rds_foresight_camera_object_list_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg" NAME_WE)
add_custom_target(_rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_foresight_camera_object_list_msgs" "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg" NAME_WE)
add_custom_target(_rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_foresight_camera_object_list_msgs" "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg" "rds_foresight_camera_object_list_msgs/BoundBox"
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg" NAME_WE)
add_custom_target(_rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_foresight_camera_object_list_msgs" "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg" "rds_foresight_camera_object_list_msgs/BoundBox:rds_foresight_camera_object_list_msgs/Obstacle"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_cpp(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_cpp(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg;/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rds_foresight_camera_object_list_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rds_foresight_camera_object_list_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages rds_foresight_camera_object_list_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_cpp _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_cpp _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_cpp _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_foresight_camera_object_list_msgs_gencpp)
add_dependencies(rds_foresight_camera_object_list_msgs_gencpp rds_foresight_camera_object_list_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_foresight_camera_object_list_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_eus(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_eus(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg;/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(rds_foresight_camera_object_list_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rds_foresight_camera_object_list_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages rds_foresight_camera_object_list_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_eus _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_eus _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_eus _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_foresight_camera_object_list_msgs_geneus)
add_dependencies(rds_foresight_camera_object_list_msgs_geneus rds_foresight_camera_object_list_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_foresight_camera_object_list_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_lisp(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_lisp(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg;/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rds_foresight_camera_object_list_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rds_foresight_camera_object_list_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages rds_foresight_camera_object_list_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_lisp _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_lisp _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_lisp _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_foresight_camera_object_list_msgs_genlisp)
add_dependencies(rds_foresight_camera_object_list_msgs_genlisp rds_foresight_camera_object_list_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_foresight_camera_object_list_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_nodejs(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_nodejs(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg;/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rds_foresight_camera_object_list_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rds_foresight_camera_object_list_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages rds_foresight_camera_object_list_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_nodejs _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_nodejs _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_nodejs _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_foresight_camera_object_list_msgs_gennodejs)
add_dependencies(rds_foresight_camera_object_list_msgs_gennodejs rds_foresight_camera_object_list_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_foresight_camera_object_list_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_py(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)
_generate_msg_py(rds_foresight_camera_object_list_msgs
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg;/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rds_foresight_camera_object_list_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rds_foresight_camera_object_list_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages rds_foresight_camera_object_list_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/BoundBox.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_py _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_py _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_foresight_camera_object_list_msgs/msg/Frames.msg" NAME_WE)
add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_py _rds_foresight_camera_object_list_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_foresight_camera_object_list_msgs_genpy)
add_dependencies(rds_foresight_camera_object_list_msgs_genpy rds_foresight_camera_object_list_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_foresight_camera_object_list_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_foresight_camera_object_list_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_foresight_camera_object_list_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_foresight_camera_object_list_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_foresight_camera_object_list_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_foresight_camera_object_list_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rds_foresight_camera_object_list_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
