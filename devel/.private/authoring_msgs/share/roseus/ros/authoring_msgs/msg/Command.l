;; Auto-generated. Do not edit!


(when (boundp 'authoring_msgs::Command)
  (if (not (find-package "AUTHORING_MSGS"))
    (make-package "AUTHORING_MSGS"))
  (shadow 'Command (find-package "AUTHORING_MSGS")))
(unless (find-package "AUTHORING_MSGS::COMMAND")
  (make-package "AUTHORING_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(intern "*VIZ*" (find-package "AUTHORING_MSGS::COMMAND"))
(shadow '*VIZ* (find-package "AUTHORING_MSGS::COMMAND"))
(defconstant authoring_msgs::Command::*VIZ* 0)
(intern "*SIM*" (find-package "AUTHORING_MSGS::COMMAND"))
(shadow '*SIM* (find-package "AUTHORING_MSGS::COMMAND"))
(defconstant authoring_msgs::Command::*SIM* 1)
(intern "*EXEC*" (find-package "AUTHORING_MSGS::COMMAND"))
(shadow '*EXEC* (find-package "AUTHORING_MSGS::COMMAND"))
(defconstant authoring_msgs::Command::*EXEC* 2)
(intern "*EDIT*" (find-package "AUTHORING_MSGS::COMMAND"))
(shadow '*EDIT* (find-package "AUTHORING_MSGS::COMMAND"))
(defconstant authoring_msgs::Command::*EDIT* 3)

(defun authoring_msgs::Command-to-symbol (const)
  (cond
        ((= const 0) 'authoring_msgs::Command::*VIZ*)
        ((= const 1) 'authoring_msgs::Command::*SIM*)
        ((= const 2) 'authoring_msgs::Command::*EXEC*)
        ((= const 3) 'authoring_msgs::Command::*EDIT*)
        (t nil)))

(defclass authoring_msgs::Command
  :super ros::object
  :slots (_type _core_action ))

(defmethod authoring_msgs::Command
  (:init
   (&key
    ((:type __type) 0)
    ((:core_action __core_action) ())
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _core_action __core_action)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:core_action
   (&rest __core_action)
   (if (keywordp (car __core_action))
       (send* _core_action __core_action)
     (progn
       (if __core_action (setq _core_action (car __core_action)))
       _core_action)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; authoring_msgs/Action[] _core_action
    (apply #'+ (send-all _core_action :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; authoring_msgs/Action[] _core_action
     (write-long (length _core_action) s)
     (dolist (elem _core_action)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; authoring_msgs/Action[] _core_action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _core_action (let (r) (dotimes (i n) (push (instance authoring_msgs::Action :init) r)) r))
     (dolist (elem- _core_action)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get authoring_msgs::Command :md5sum-) "a8baf140351835cbf3fe6136ce58b889")
(setf (get authoring_msgs::Command :datatype-) "authoring_msgs/Command")
(setf (get authoring_msgs::Command :definition-)
      "#Types
uint8 VIZ=0
uint8 SIM=1
uint8 EXEC=2
uint8 EDIT=3

uint8 type

# Actions
authoring_msgs/Action[] core_action

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



(provide :authoring_msgs/Command "a8baf140351835cbf3fe6136ce58b889")


