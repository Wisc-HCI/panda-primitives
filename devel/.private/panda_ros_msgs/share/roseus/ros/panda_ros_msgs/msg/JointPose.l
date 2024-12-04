;; Auto-generated. Do not edit!


(when (boundp 'panda_ros_msgs::JointPose)
  (if (not (find-package "PANDA_ROS_MSGS"))
    (make-package "PANDA_ROS_MSGS"))
  (shadow 'JointPose (find-package "PANDA_ROS_MSGS")))
(unless (find-package "PANDA_ROS_MSGS::JOINTPOSE")
  (make-package "PANDA_ROS_MSGS::JOINTPOSE"))

(in-package "ROS")
;;//! \htmlinclude JointPose.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass panda_ros_msgs::JointPose
  :super ros::object
  :slots (_header _joint_pose ))

(defmethod panda_ros_msgs::JointPose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:joint_pose __joint_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _joint_pose __joint_pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:joint_pose
   (&optional __joint_pose)
   (if __joint_pose (setq _joint_pose __joint_pose)) _joint_pose)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _joint_pose
    (* 8    (length _joint_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _joint_pose
     (write-long (length _joint_pose) s)
     (dotimes (i (length _joint_pose))
       (sys::poke (elt _joint_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _joint_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get panda_ros_msgs::JointPose :md5sum-) "111f415c2656730dedd8594187f1259b")
(setf (get panda_ros_msgs::JointPose :datatype-) "panda_ros_msgs/JointPose")
(setf (get panda_ros_msgs::JointPose :definition-)
      "# Header
Header header

# Velocities
float64[] joint_pose
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



(provide :panda_ros_msgs/JointPose "111f415c2656730dedd8594187f1259b")


