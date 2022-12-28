# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rds_perception_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Irds_perception_msgs:/home/project/award/catkin_ws/src/rds_perception_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rds_perception_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg" NAME_WE)
add_custom_target(_rds_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_perception_msgs" "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg" NAME_WE)
add_custom_target(_rds_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_perception_msgs" "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg" ""
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg" NAME_WE)
add_custom_target(_rds_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_perception_msgs" "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg" "rds_perception_msgs/extent:rds_perception_msgs/label"
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg" NAME_WE)
add_custom_target(_rds_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_perception_msgs" "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg" "rds_perception_msgs/extent:rds_perception_msgs/label:rds_perception_msgs/track:std_msgs/Header"
)

get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg" NAME_WE)
add_custom_target(_rds_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rds_perception_msgs" "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg" "rds_perception_msgs/label"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_cpp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_cpp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_cpp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_cpp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rds_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rds_perception_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rds_perception_msgs_generate_messages rds_perception_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_cpp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_cpp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_cpp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_cpp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_cpp _rds_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_perception_msgs_gencpp)
add_dependencies(rds_perception_msgs_gencpp rds_perception_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_perception_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_eus(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_eus(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_eus(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_eus(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(rds_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rds_perception_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rds_perception_msgs_generate_messages rds_perception_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_eus _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_eus _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_eus _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_eus _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_eus _rds_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_perception_msgs_geneus)
add_dependencies(rds_perception_msgs_geneus rds_perception_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_perception_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_lisp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_lisp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_lisp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_lisp(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rds_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rds_perception_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rds_perception_msgs_generate_messages rds_perception_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_lisp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_lisp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_lisp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_lisp _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_lisp _rds_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_perception_msgs_genlisp)
add_dependencies(rds_perception_msgs_genlisp rds_perception_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_perception_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_nodejs(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_nodejs(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_nodejs(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_nodejs(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rds_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rds_perception_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rds_perception_msgs_generate_messages rds_perception_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_nodejs _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_nodejs _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_nodejs _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_nodejs _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_nodejs _rds_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_perception_msgs_gennodejs)
add_dependencies(rds_perception_msgs_gennodejs rds_perception_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_perception_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_py(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_py(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_py(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg;/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs
)
_generate_msg_py(rds_perception_msgs
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg"
  "${MSG_I_FLAGS}"
  "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rds_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rds_perception_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rds_perception_msgs_generate_messages rds_perception_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/extent.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_py _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/label.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_py _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/track.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_py _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/tracking.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_py _rds_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/project/award/catkin_ws/src/rds_perception_msgs/msg/IntersectionZone.msg" NAME_WE)
add_dependencies(rds_perception_msgs_generate_messages_py _rds_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rds_perception_msgs_genpy)
add_dependencies(rds_perception_msgs_genpy rds_perception_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rds_perception_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rds_perception_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rds_perception_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rds_perception_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rds_perception_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rds_perception_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rds_perception_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rds_perception_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rds_perception_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rds_perception_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rds_perception_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
