;; Auto-generated. Do not edit!


(when (boundp 'authoring_msgs::AuthoringActionGoal)
  (if (not (find-package "AUTHORING_MSGS"))
    (make-package "AUTHORING_MSGS"))
  (shadow 'AuthoringActionGoal (find-package "AUTHORING_MSGS")))
(unless (find-package "AUTHORING_MSGS::AUTHORINGACTIONGOAL")
  (make-package "AUTHORING_MSGS::AUTHORINGACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude AuthoringActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass authoring_msgs::AuthoringActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod authoring_msgs::AuthoringActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance authoring_msgs::AuthoringGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; authoring_msgs/AuthoringGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; authoring_msgs/AuthoringGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; authoring_msgs/AuthoringGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get authoring_msgs::AuthoringActionGoal :md5sum-) "de05a9fa4de9d6c20e0eb50635b57b52")
(setf (get authoring_msgs::AuthoringActionGoal :datatype-) "authoring_msgs/AuthoringActionGoal")
(setf (get authoring_msgs::AuthoringActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
AuthoringGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: authoring_msgs/AuthoringGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
authoring_msgs/Action goal

================================================================================
MSG: authoring_msgs/Action
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

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: panda_ros_msgs/HybridPoseArray
Header header
panda_ros_msgs/HybridPose[] poses

================================================================================
MSG: panda_ros_msgs/HybridPose
# Pose
geometry_msgs/Pose pose

# Selection vector [6 (drop rotation for now)]
uint8[] sel_vector

# Desired Wrench
geometry_msgs/Wrench wrench

# Constraint Frame (might drop)
geometry_msgs/Quaternion constraint_frame

# Header
Header header

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :authoring_msgs/AuthoringActionGoal "de05a9fa4de9d6c20e0eb50635b57b52")


