# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "panda_ros_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ipanda_ros_msgs:/workspace/src/panda-ros-msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(panda_ros_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg" NAME_WE)
add_custom_target(_panda_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_ros_msgs" "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPose.msg" NAME_WE)
add_custom_target(_panda_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_ros_msgs" "/workspace/src/panda-ros-msgs/msg/HybridPose.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Wrench"
)

get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg" NAME_WE)
add_custom_target(_panda_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_ros_msgs" "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg" "std_msgs/Header:panda_ros_msgs/HybridPose:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Wrench"
)

get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/JointPose.msg" NAME_WE)
add_custom_target(_panda_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_ros_msgs" "/workspace/src/panda-ros-msgs/msg/JointPose.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_cpp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_cpp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_cpp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/JointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_ros_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(panda_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(panda_ros_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(panda_ros_msgs_generate_messages panda_ros_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_cpp _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_cpp _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_cpp _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/JointPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_cpp _panda_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_ros_msgs_gencpp)
add_dependencies(panda_ros_msgs_gencpp panda_ros_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_ros_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_eus(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_eus(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_eus(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/JointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_ros_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(panda_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(panda_ros_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(panda_ros_msgs_generate_messages panda_ros_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_eus _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_eus _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_eus _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/JointPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_eus _panda_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_ros_msgs_geneus)
add_dependencies(panda_ros_msgs_geneus panda_ros_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_ros_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_lisp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_lisp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_lisp(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/JointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_ros_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(panda_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(panda_ros_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(panda_ros_msgs_generate_messages panda_ros_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_lisp _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_lisp _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_lisp _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/JointPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_lisp _panda_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_ros_msgs_genlisp)
add_dependencies(panda_ros_msgs_genlisp panda_ros_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_ros_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_nodejs(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_nodejs(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_nodejs(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/JointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_ros_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(panda_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(panda_ros_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(panda_ros_msgs_generate_messages panda_ros_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_nodejs _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_nodejs _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_nodejs _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/JointPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_nodejs _panda_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_ros_msgs_gennodejs)
add_dependencies(panda_ros_msgs_gennodejs panda_ros_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_ros_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_py(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_py(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs
)
_generate_msg_py(panda_ros_msgs
  "/workspace/src/panda-ros-msgs/msg/JointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(panda_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(panda_ros_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(panda_ros_msgs_generate_messages panda_ros_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/VelocityBoundPath.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_py _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_py _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_py _panda_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/panda-ros-msgs/msg/JointPose.msg" NAME_WE)
add_dependencies(panda_ros_msgs_generate_messages_py _panda_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_ros_msgs_genpy)
add_dependencies(panda_ros_msgs_genpy panda_ros_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_ros_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_ros_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(panda_ros_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(panda_ros_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_ros_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(panda_ros_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(panda_ros_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_ros_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(panda_ros_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(panda_ros_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_ros_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(panda_ros_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(panda_ros_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_ros_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(panda_ros_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(panda_ros_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
