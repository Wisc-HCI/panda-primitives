cmake_minimum_required(VERSION 2.8.3)
project(panda-primitives)

SET(CMAKE_CXX_FLAGS  "-O3 -fopenmp")

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS 
        roscpp 
        tf 
        cv_bridge 
        image_transport 
        visualization_msgs
        image_geometry 
        ros_numpy
        rviz_camera_stream
        panda_ros_msgs
        authoring_msgs
        sensor_msgs
        )

## System dependencies
find_package(OpenCV REQUIRED)

find_package(Eigen3 REQUIRED)

message(STATUS "OpenCV version: ${OpenCV_VERSION}")
if(2.9.0 VERSION_GREATER ${OpenCV_VERSION})
    message(FATAL "OpenCV3 required!")
endif()

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES 
  CATKIN_DEPENDS 
    tf
    ros_numpy
    authoring_msgs
    panda_ros_msgs
    sensor_msgs
  DEPENDS OpenCV
  LIBRARIES 
)


###########
## Build ##
###########

include_directories(include ${catkin_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIR})

message(STATUS test)
message(STATUS ${CMAKE_CURRENT_SOURCE_DIR})

add_definitions(-std=c++11)

set(LIBS 
    ${catkin_LIBRARIES}
    ${OpenCV_LIBRARIES}
    )

add_executable(pandaJacob src/jacob.cpp)
target_include_directories(pandaJacob PUBLIC adept${catkin_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIR} /home/senft/catkin_ws/devel/include )
target_link_libraries(pandaJacob
   ${catkin_LIBRARIES}
)
#############
## Install ##
#############

install(DIRECTORY
    launch/
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)
install(DIRECTORY
    config/
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/config
)
install(DIRECTORY
    rviz/
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/rviz
)
install(DIRECTORY
    meshes/
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/meshes
)
install(DIRECTORY
    urdfs/
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/urdfs
)

catkin_install_python(PROGRAMS
    nodes/planner
    nodes/simulator
    nodes/static_publisher
    nodes/tf_printer
    nodes/rviz_manager
    test/test_twist.py
    test/test_wipe.py
    test/test_gripper.py
    test/test_move_force.py
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

install(TARGETS pandaJacob
  RUNTIME DESTINATION lib/panda-primitives
)

