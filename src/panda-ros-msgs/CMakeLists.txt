cmake_minimum_required(VERSION 3.0)
project(panda_ros_msgs)

SET(CMAKE_BUILD_TYPE Release)

find_package(catkin REQUIRED COMPONENTS roscpp tf2_ros geometry_msgs sensor_msgs std_msgs genmsg message_generation)

add_message_files(
  FILES
  VelocityBoundPath.msg
  HybridPose.msg
  HybridPoseArray.msg
  JointPose.msg
)
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)
catkin_package(
  CATKIN_DEPENDS message_runtime
)
