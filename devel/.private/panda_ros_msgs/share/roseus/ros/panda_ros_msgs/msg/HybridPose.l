;; Auto-generated. Do not edit!


(when (boundp 'panda_ros_msgs::HybridPose)
  (if (not (find-package "PANDA_ROS_MSGS"))
    (make-package "PANDA_ROS_MSGS"))
  (shadow 'HybridPose (find-package "PANDA_ROS_MSGS")))
(unless (find-package "PANDA_ROS_MSGS::HYBRIDPOSE")
  (make-package "PANDA_ROS_MSGS::HYBRIDPOSE"))

(in-package "ROS")
;;//! \htmlinclude HybridPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass panda_ros_msgs::HybridPose
  :super ros::object
  :slots (_pose _sel_vector _wrench _constraint_frame _header ))

(defmethod panda_ros_msgs::HybridPose
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:sel_vector __sel_vector) (make-array 0 :initial-element 0 :element-type :char))
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    ((:constraint_frame __constraint_frame) (instance geometry_msgs::Quaternion :init))
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _sel_vector __sel_vector)
   (setq _wrench __wrench)
   (setq _constraint_frame __constraint_frame)
   (setq _header __header)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:sel_vector
   (&optional __sel_vector)
   (if __sel_vector (setq _sel_vector __sel_vector)) _sel_vector)
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:constraint_frame
   (&rest __constraint_frame)
   (if (keywordp (car __constraint_frame))
       (send* _constraint_frame __constraint_frame)
     (progn
       (if __constraint_frame (setq _constraint_frame (car __constraint_frame)))
       _constraint_frame)))
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint8[] _sel_vector
    (* 1    (length _sel_vector)) 4
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ;; geometry_msgs/Quaternion _constraint_frame
    (send _constraint_frame :serialization-length)
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint8[] _sel_vector
     (write-long (length _sel_vector) s)
     (princ _sel_vector s)
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;; geometry_msgs/Quaternion _constraint_frame
       (send _constraint_frame :serialize s)
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8[] _sel_vector
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _sel_vector (make-array n :element-type :char))
     (replace _sel_vector buf :start2 ptr-) (incf ptr- n))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;; geometry_msgs/Quaternion _constraint_frame
     (send _constraint_frame :deserialize buf ptr-) (incf ptr- (send _constraint_frame :serialization-length))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get panda_ros_msgs::HybridPose :md5sum-) "477fbc04dffb4d202ea3c5e892368617")
(setf (get panda_ros_msgs::HybridPose :datatype-) "panda_ros_msgs/HybridPose")
(setf (get panda_ros_msgs::HybridPose :definition-)
      "# Pose
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

")



(provide :panda_ros_msgs/HybridPose "477fbc04dffb4d202ea3c5e892368617")


