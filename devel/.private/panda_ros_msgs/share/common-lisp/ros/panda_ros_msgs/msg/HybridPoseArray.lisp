; Auto-generated. Do not edit!


(cl:in-package panda_ros_msgs-msg)


;//! \htmlinclude HybridPoseArray.msg.html

(cl:defclass <HybridPoseArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector panda_ros_msgs-msg:HybridPose)
   :initform (cl:make-array 0 :element-type 'panda_ros_msgs-msg:HybridPose :initial-element (cl:make-instance 'panda_ros_msgs-msg:HybridPose))))
)

(cl:defclass HybridPoseArray (<HybridPoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HybridPoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HybridPoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_ros_msgs-msg:<HybridPoseArray> is deprecated: use panda_ros_msgs-msg:HybridPoseArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HybridPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:header-val is deprecated.  Use panda_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <HybridPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:poses-val is deprecated.  Use panda_ros_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HybridPoseArray>) ostream)
  "Serializes a message object of type '<HybridPoseArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HybridPoseArray>) istream)
  "Deserializes a message object of type '<HybridPoseArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'panda_ros_msgs-msg:HybridPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HybridPoseArray>)))
  "Returns string type for a message object of type '<HybridPoseArray>"
  "panda_ros_msgs/HybridPoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HybridPoseArray)))
  "Returns string type for a message object of type 'HybridPoseArray"
  "panda_ros_msgs/HybridPoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HybridPoseArray>)))
  "Returns md5sum for a message object of type '<HybridPoseArray>"
  "e32ea78c109a0ac593e0b2d9d737c8d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HybridPoseArray)))
  "Returns md5sum for a message object of type 'HybridPoseArray"
  "e32ea78c109a0ac593e0b2d9d737c8d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HybridPoseArray>)))
  "Returns full string definition for message of type '<HybridPoseArray>"
  (cl:format cl:nil "Header header~%panda_ros_msgs/HybridPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: panda_ros_msgs/HybridPose~%# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HybridPoseArray)))
  "Returns full string definition for message of type 'HybridPoseArray"
  (cl:format cl:nil "Header header~%panda_ros_msgs/HybridPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: panda_ros_msgs/HybridPose~%# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HybridPoseArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HybridPoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'HybridPoseArray
    (cl:cons ':header (header msg))
    (cl:cons ':poses (poses msg))
))
