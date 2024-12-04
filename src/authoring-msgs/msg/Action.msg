#Types
uint8 PICK=0
uint8 SCREW=1
uint8 PLACE=2
uint8 WIPE=3
uint8 MOVE_OBJECT=4
uint8 RESET=5
uint8 MOVE=6
uint8 MOVE_TO_CONTACT=7
uint8 GRASP=8
uint8 RELEASE=9
uint8 VIEW=10
uint8 INSPECT=11
uint8 WAIT=12
uint8 PUSH=13
uint8 STOP=14
uint8 INSERT=15
uint8 MOVE_FORCE=16
uint8 UNSCREW=17
uint8 MOVE_ANGLE=18
uint8 PULL=19
uint8 CAMERA_VELOCITY=20
uint8 MOVE_UNKNOWN=21
uint8 PULL_DRAWER=22
uint8 BIAS_FORCES=23
uint8 DROP=24
uint8 RELEASE_FORCE=25

# Type
uint8 type

std_msgs/Bool sim

std_msgs/Bool finished

# HybridPoseArray (for high level planning)
panda_ros_msgs/HybridPoseArray poses

# HybridPose (for low level planning)
panda_ros_msgs/HybridPose pose

# JointState (for going to fixed position, example reset)
float64[] joint_pose

# Item
std_msgs/String item

# Velocity
geometry_msgs/Twist velocity
