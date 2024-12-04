# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "authoring_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Iauthoring_msgs:/workspace/src/authoring-msgs/msg;-Iauthoring_msgs:/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ipanda_ros_msgs:/workspace/src/panda-ros-msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(authoring_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Action.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/src/authoring-msgs/msg/Action.msg" "panda_ros_msgs/HybridPose:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Twist:geometry_msgs/Quaternion:std_msgs/Bool:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Wrench:std_msgs/String:panda_ros_msgs/HybridPoseArray"
)

get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Command.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/src/authoring-msgs/msg/Command.msg" "panda_ros_msgs/HybridPose:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Twist:panda_ros_msgs/HybridPoseArray:geometry_msgs/Quaternion:std_msgs/Bool:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Wrench:std_msgs/String:authoring_msgs/Action"
)

get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POI.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/src/authoring-msgs/msg/POI.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/String"
)

get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POIArray.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/src/authoring-msgs/msg/POIArray.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/String:authoring_msgs/POI"
)

get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg" "panda_ros_msgs/HybridPose:authoring_msgs/AuthoringActionResult:authoring_msgs/AuthoringResult:std_msgs/Header:actionlib_msgs/GoalID:authoring_msgs/Action:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:authoring_msgs/AuthoringGoal:authoring_msgs/AuthoringFeedback:std_msgs/String:panda_ros_msgs/HybridPoseArray:authoring_msgs/AuthoringActionFeedback:authoring_msgs/AuthoringActionGoal:geometry_msgs/Pose:geometry_msgs/Twist:std_msgs/Bool:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Wrench"
)

get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg" "authoring_msgs/AuthoringGoal:panda_ros_msgs/HybridPose:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Twist:panda_ros_msgs/HybridPoseArray:geometry_msgs/Quaternion:std_msgs/Bool:geometry_msgs/Point:geometry_msgs/Vector3:actionlib_msgs/GoalID:geometry_msgs/Wrench:std_msgs/String:authoring_msgs/Action"
)

get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg" "authoring_msgs/AuthoringResult:std_msgs/Header:std_msgs/Bool:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:authoring_msgs/AuthoringFeedback"
)

get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg" "panda_ros_msgs/HybridPose:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Twist:panda_ros_msgs/HybridPoseArray:geometry_msgs/Quaternion:std_msgs/Bool:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Wrench:std_msgs/String:authoring_msgs/Action"
)

get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg" "std_msgs/Bool"
)

get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg" NAME_WE)
add_custom_target(_authoring_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "authoring_msgs" "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POIArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/POI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/src/authoring-msgs/msg/Action.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_cpp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(authoring_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(authoring_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(authoring_msgs_generate_messages authoring_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Action.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Command.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POI.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POIArray.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_cpp _authoring_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(authoring_msgs_gencpp)
add_dependencies(authoring_msgs_gencpp authoring_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS authoring_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POIArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/POI.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/src/authoring-msgs/msg/Action.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)
_generate_msg_eus(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(authoring_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(authoring_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(authoring_msgs_generate_messages authoring_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Action.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Command.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POI.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POIArray.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_eus _authoring_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(authoring_msgs_geneus)
add_dependencies(authoring_msgs_geneus authoring_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS authoring_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POIArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/POI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/src/authoring-msgs/msg/Action.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)
_generate_msg_lisp(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(authoring_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(authoring_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(authoring_msgs_generate_messages authoring_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Action.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Command.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POI.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POIArray.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_lisp _authoring_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(authoring_msgs_genlisp)
add_dependencies(authoring_msgs_genlisp authoring_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS authoring_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POIArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/POI.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/src/authoring-msgs/msg/Action.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)
_generate_msg_nodejs(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(authoring_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(authoring_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(authoring_msgs_generate_messages authoring_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Action.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Command.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POI.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POIArray.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_nodejs _authoring_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(authoring_msgs_gennodejs)
add_dependencies(authoring_msgs_gennodejs authoring_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS authoring_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Action.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/src/authoring-msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POI.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/src/authoring-msgs/msg/POIArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/POI.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/src/authoring-msgs/msg/Action.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg;/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg"
  "${MSG_I_FLAGS}"
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg"
  "${MSG_I_FLAGS}"
  "/workspace/src/panda-ros-msgs/msg/HybridPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/workspace/src/panda-ros-msgs/msg/HybridPoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/workspace/src/authoring-msgs/msg/Action.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)
_generate_msg_py(authoring_msgs
  "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(authoring_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(authoring_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(authoring_msgs_generate_messages authoring_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Action.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/Command.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POI.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/src/authoring-msgs/msg/POIArray.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringAction.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringActionFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringGoal.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringResult.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/devel/.private/authoring_msgs/share/authoring_msgs/msg/AuthoringFeedback.msg" NAME_WE)
add_dependencies(authoring_msgs_generate_messages_py _authoring_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(authoring_msgs_genpy)
add_dependencies(authoring_msgs_genpy authoring_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS authoring_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/authoring_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(authoring_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(authoring_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(authoring_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(authoring_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET panda_ros_msgs_generate_messages_cpp)
  add_dependencies(authoring_msgs_generate_messages_cpp panda_ros_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/authoring_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(authoring_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(authoring_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(authoring_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(authoring_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET panda_ros_msgs_generate_messages_eus)
  add_dependencies(authoring_msgs_generate_messages_eus panda_ros_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/authoring_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(authoring_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(authoring_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(authoring_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(authoring_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET panda_ros_msgs_generate_messages_lisp)
  add_dependencies(authoring_msgs_generate_messages_lisp panda_ros_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/authoring_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(authoring_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(authoring_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(authoring_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(authoring_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET panda_ros_msgs_generate_messages_nodejs)
  add_dependencies(authoring_msgs_generate_messages_nodejs panda_ros_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/authoring_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(authoring_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(authoring_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(authoring_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(authoring_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET panda_ros_msgs_generate_messages_py)
  add_dependencies(authoring_msgs_generate_messages_py panda_ros_msgs_generate_messages_py)
endif()
