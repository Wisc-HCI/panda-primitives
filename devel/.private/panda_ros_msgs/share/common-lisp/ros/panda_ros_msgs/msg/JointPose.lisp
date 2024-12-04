; Auto-generated. Do not edit!


(cl:in-package panda_ros_msgs-msg)


;//! \htmlinclude JointPose.msg.html

(cl:defclass <JointPose> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (joint_pose
    :reader joint_pose
    :initarg :joint_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointPose (<JointPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_ros_msgs-msg:<JointPose> is deprecated: use panda_ros_msgs-msg:JointPose instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:header-val is deprecated.  Use panda_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'joint_pose-val :lambda-list '(m))
(cl:defmethod joint_pose-val ((m <JointPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:joint_pose-val is deprecated.  Use panda_ros_msgs-msg:joint_pose instead.")
  (joint_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointPose>) ostream)
  "Serializes a message object of type '<JointPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointPose>) istream)
  "Deserializes a message object of type '<JointPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointPose>)))
  "Returns string type for a message object of type '<JointPose>"
  "panda_ros_msgs/JointPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPose)))
  "Returns string type for a message object of type 'JointPose"
  "panda_ros_msgs/JointPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointPose>)))
  "Returns md5sum for a message object of type '<JointPose>"
  "111f415c2656730dedd8594187f1259b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointPose)))
  "Returns md5sum for a message object of type 'JointPose"
  "111f415c2656730dedd8594187f1259b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointPose>)))
  "Returns full string definition for message of type '<JointPose>"
  (cl:format cl:nil "# Header~%Header header~%~%# Velocities~%float64[] joint_pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointPose)))
  "Returns full string definition for message of type 'JointPose"
  (cl:format cl:nil "# Header~%Header header~%~%# Velocities~%float64[] joint_pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointPose>))
  "Converts a ROS message object to a list"
  (cl:list 'JointPose
    (cl:cons ':header (header msg))
    (cl:cons ':joint_pose (joint_pose msg))
))
