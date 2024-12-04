; Auto-generated. Do not edit!


(cl:in-package panda_ros_msgs-msg)


;//! \htmlinclude HybridPose.msg.html

(cl:defclass <HybridPose> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (sel_vector
    :reader sel_vector
    :initarg :sel_vector
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (constraint_frame
    :reader constraint_frame
    :initarg :constraint_frame
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass HybridPose (<HybridPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HybridPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HybridPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_ros_msgs-msg:<HybridPose> is deprecated: use panda_ros_msgs-msg:HybridPose instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <HybridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:pose-val is deprecated.  Use panda_ros_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'sel_vector-val :lambda-list '(m))
(cl:defmethod sel_vector-val ((m <HybridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:sel_vector-val is deprecated.  Use panda_ros_msgs-msg:sel_vector instead.")
  (sel_vector m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <HybridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:wrench-val is deprecated.  Use panda_ros_msgs-msg:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'constraint_frame-val :lambda-list '(m))
(cl:defmethod constraint_frame-val ((m <HybridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:constraint_frame-val is deprecated.  Use panda_ros_msgs-msg:constraint_frame instead.")
  (constraint_frame m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HybridPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:header-val is deprecated.  Use panda_ros_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HybridPose>) ostream)
  "Serializes a message object of type '<HybridPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sel_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'sel_vector))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'constraint_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HybridPose>) istream)
  "Deserializes a message object of type '<HybridPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sel_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sel_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'constraint_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HybridPose>)))
  "Returns string type for a message object of type '<HybridPose>"
  "panda_ros_msgs/HybridPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HybridPose)))
  "Returns string type for a message object of type 'HybridPose"
  "panda_ros_msgs/HybridPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HybridPose>)))
  "Returns md5sum for a message object of type '<HybridPose>"
  "477fbc04dffb4d202ea3c5e892368617")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HybridPose)))
  "Returns md5sum for a message object of type 'HybridPose"
  "477fbc04dffb4d202ea3c5e892368617")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HybridPose>)))
  "Returns full string definition for message of type '<HybridPose>"
  (cl:format cl:nil "# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HybridPose)))
  "Returns full string definition for message of type 'HybridPose"
  (cl:format cl:nil "# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HybridPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sel_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'constraint_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HybridPose>))
  "Converts a ROS message object to a list"
  (cl:list 'HybridPose
    (cl:cons ':pose (pose msg))
    (cl:cons ':sel_vector (sel_vector msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':constraint_frame (constraint_frame msg))
    (cl:cons ':header (header msg))
))
