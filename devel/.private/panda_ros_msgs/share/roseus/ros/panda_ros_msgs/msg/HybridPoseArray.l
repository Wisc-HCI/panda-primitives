;; Auto-generated. Do not edit!


(when (boundp 'panda_ros_msgs::HybridPoseArray)
  (if (not (find-package "PANDA_ROS_MSGS"))
    (make-package "PANDA_ROS_MSGS"))
  (shadow 'HybridPoseArray (find-package "PANDA_ROS_MSGS")))
(unless (find-package "PANDA_ROS_MSGS::HYBRIDPOSEARRAY")
  (make-package "PANDA_ROS_MSGS::HYBRIDPOSEARRAY"))

(in-package "ROS")
;;//! \htmlinclude HybridPoseArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass panda_ros_msgs::HybridPoseArray
  :super ros::object
  :slots (_header _poses ))

(defmethod panda_ros_msgs::HybridPoseArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _poses __poses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; panda_ros_msgs/HybridPose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; panda_ros_msgs/HybridPose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; panda_ros_msgs/HybridPose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance panda_ros_msgs::HybridPose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get panda_ros_msgs::HybridPoseArray :md5sum-) "e32ea78c109a0ac593e0b2d9d737c8d6")
(setf (get panda_ros_msgs::HybridPoseArray :datatype-) "panda_ros_msgs/HybridPoseArray")
(setf (get panda_ros_msgs::HybridPoseArray :definition-)
      "Header header
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
")



(provide :panda_ros_msgs/HybridPoseArray "e32ea78c109a0ac593e0b2d9d737c8d6")


