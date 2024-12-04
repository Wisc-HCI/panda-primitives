;; Auto-generated. Do not edit!


(when (boundp 'authoring_msgs::Action)
  (if (not (find-package "AUTHORING_MSGS"))
    (make-package "AUTHORING_MSGS"))
  (shadow 'Action (find-package "AUTHORING_MSGS")))
(unless (find-package "AUTHORING_MSGS::ACTION")
  (make-package "AUTHORING_MSGS::ACTION"))

(in-package "ROS")
;;//! \htmlinclude Action.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "PANDA_ROS_MSGS"))
  (ros::roseus-add-msgs "panda_ros_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*PICK*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*PICK* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*PICK* 0)
(intern "*SCREW*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*SCREW* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*SCREW* 1)
(intern "*PLACE*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*PLACE* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*PLACE* 2)
(intern "*WIPE*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*WIPE* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*WIPE* 3)
(intern "*MOVE_OBJECT*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*MOVE_OBJECT* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*MOVE_OBJECT* 4)
(intern "*RESET*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*RESET* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*RESET* 5)
(intern "*MOVE*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*MOVE* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*MOVE* 6)
(intern "*MOVE_TO_CONTACT*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*MOVE_TO_CONTACT* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*MOVE_TO_CONTACT* 7)
(intern "*GRASP*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*GRASP* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*GRASP* 8)
(intern "*RELEASE*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*RELEASE* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*RELEASE* 9)
(intern "*VIEW*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*VIEW* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*VIEW* 10)
(intern "*INSPECT*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*INSPECT* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*INSPECT* 11)
(intern "*WAIT*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*WAIT* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*WAIT* 12)
(intern "*PUSH*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*PUSH* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*PUSH* 13)
(intern "*STOP*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*STOP* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*STOP* 14)
(intern "*INSERT*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*INSERT* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*INSERT* 15)
(intern "*MOVE_FORCE*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*MOVE_FORCE* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*MOVE_FORCE* 16)
(intern "*UNSCREW*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*UNSCREW* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*UNSCREW* 17)
(intern "*MOVE_ANGLE*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*MOVE_ANGLE* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*MOVE_ANGLE* 18)
(intern "*PULL*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*PULL* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*PULL* 19)
(intern "*CAMERA_VELOCITY*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*CAMERA_VELOCITY* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*CAMERA_VELOCITY* 20)
(intern "*MOVE_UNKNOWN*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*MOVE_UNKNOWN* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*MOVE_UNKNOWN* 21)
(intern "*PULL_DRAWER*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*PULL_DRAWER* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*PULL_DRAWER* 22)
(intern "*BIAS_FORCES*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*BIAS_FORCES* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*BIAS_FORCES* 23)
(intern "*DROP*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*DROP* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*DROP* 24)
(intern "*RELEASE_FORCE*" (find-package "AUTHORING_MSGS::ACTION"))
(shadow '*RELEASE_FORCE* (find-package "AUTHORING_MSGS::ACTION"))
(defconstant authoring_msgs::Action::*RELEASE_FORCE* 25)

(defun authoring_msgs::Action-to-symbol (const)
  (cond
        ((= const 0) 'authoring_msgs::Action::*PICK*)
        ((= const 1) 'authoring_msgs::Action::*SCREW*)
        ((= const 2) 'authoring_msgs::Action::*PLACE*)
        ((= const 3) 'authoring_msgs::Action::*WIPE*)
        ((= const 4) 'authoring_msgs::Action::*MOVE_OBJECT*)
        ((= const 5) 'authoring_msgs::Action::*RESET*)
        ((= const 6) 'authoring_msgs::Action::*MOVE*)
        ((= const 7) 'authoring_msgs::Action::*MOVE_TO_CONTACT*)
        ((= const 8) 'authoring_msgs::Action::*GRASP*)
        ((= const 9) 'authoring_msgs::Action::*RELEASE*)
        ((= const 10) 'authoring_msgs::Action::*VIEW*)
        ((= const 11) 'authoring_msgs::Action::*INSPECT*)
        ((= const 12) 'authoring_msgs::Action::*WAIT*)
        ((= const 13) 'authoring_msgs::Action::*PUSH*)
        ((= const 14) 'authoring_msgs::Action::*STOP*)
        ((= const 15) 'authoring_msgs::Action::*INSERT*)
        ((= const 16) 'authoring_msgs::Action::*MOVE_FORCE*)
        ((= const 17) 'authoring_msgs::Action::*UNSCREW*)
        ((= const 18) 'authoring_msgs::Action::*MOVE_ANGLE*)
        ((= const 19) 'authoring_msgs::Action::*PULL*)
        ((= const 20) 'authoring_msgs::Action::*CAMERA_VELOCITY*)
        ((= const 21) 'authoring_msgs::Action::*MOVE_UNKNOWN*)
        ((= const 22) 'authoring_msgs::Action::*PULL_DRAWER*)
        ((= const 23) 'authoring_msgs::Action::*BIAS_FORCES*)
        ((= const 24) 'authoring_msgs::Action::*DROP*)
        ((= const 25) 'authoring_msgs::Action::*RELEASE_FORCE*)
        (t nil)))

(defclass authoring_msgs::Action
  :super ros::object
  :slots (_type _sim _finished _poses _pose _joint_pose _item _velocity ))

(defmethod authoring_msgs::Action
  (:init
   (&key
    ((:type __type) 0)
    ((:sim __sim) (instance std_msgs::Bool :init))
    ((:finished __finished) (instance std_msgs::Bool :init))
    ((:poses __poses) (instance panda_ros_msgs::HybridPoseArray :init))
    ((:pose __pose) (instance panda_ros_msgs::HybridPose :init))
    ((:joint_pose __joint_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:item __item) (instance std_msgs::String :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _sim __sim)
   (setq _finished __finished)
   (setq _poses __poses)
   (setq _pose __pose)
   (setq _joint_pose __joint_pose)
   (setq _item __item)
   (setq _velocity __velocity)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:sim
   (&rest __sim)
   (if (keywordp (car __sim))
       (send* _sim __sim)
     (progn
       (if __sim (setq _sim (car __sim)))
       _sim)))
  (:finished
   (&rest __finished)
   (if (keywordp (car __finished))
       (send* _finished __finished)
     (progn
       (if __finished (setq _finished (car __finished)))
       _finished)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:joint_pose
   (&optional __joint_pose)
   (if __joint_pose (setq _joint_pose __joint_pose)) _joint_pose)
  (:item
   (&rest __item)
   (if (keywordp (car __item))
       (send* _item __item)
     (progn
       (if __item (setq _item (car __item)))
       _item)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; std_msgs/Bool _sim
    (send _sim :serialization-length)
    ;; std_msgs/Bool _finished
    (send _finished :serialization-length)
    ;; panda_ros_msgs/HybridPoseArray _poses
    (send _poses :serialization-length)
    ;; panda_ros_msgs/HybridPose _pose
    (send _pose :serialization-length)
    ;; float64[] _joint_pose
    (* 8    (length _joint_pose)) 4
    ;; std_msgs/String _item
    (send _item :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; std_msgs/Bool _sim
       (send _sim :serialize s)
     ;; std_msgs/Bool _finished
       (send _finished :serialize s)
     ;; panda_ros_msgs/HybridPoseArray _poses
       (send _poses :serialize s)
     ;; panda_ros_msgs/HybridPose _pose
       (send _pose :serialize s)
     ;; float64[] _joint_pose
     (write-long (length _joint_pose) s)
     (dotimes (i (length _joint_pose))
       (sys::poke (elt _joint_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; std_msgs/String _item
       (send _item :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Bool _sim
     (send _sim :deserialize buf ptr-) (incf ptr- (send _sim :serialization-length))
   ;; std_msgs/Bool _finished
     (send _finished :deserialize buf ptr-) (incf ptr- (send _finished :serialization-length))
   ;; panda_ros_msgs/HybridPoseArray _poses
     (send _poses :deserialize buf ptr-) (incf ptr- (send _poses :serialization-length))
   ;; panda_ros_msgs/HybridPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[] _joint_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; std_msgs/String _item
     (send _item :deserialize buf ptr-) (incf ptr- (send _item :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get authoring_msgs::Action :md5sum-) "41fc65066a6b05ed16658136c65c754d")
(setf (get authoring_msgs::Action :datatype-) "authoring_msgs/Action")
(setf (get authoring_msgs::Action :definition-)
      "#Types
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



(provide :authoring_msgs/Action "41fc65066a6b05ed16658136c65c754d")


