; Auto-generated. Do not edit!


(cl:in-package panda_ros_msgs-msg)


;//! \htmlinclude VelocityBoundPath.msg.html

(cl:defclass <VelocityBoundPath> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (maxV
    :reader maxV
    :initarg :maxV
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityBoundPath (<VelocityBoundPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityBoundPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityBoundPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_ros_msgs-msg:<VelocityBoundPath> is deprecated: use panda_ros_msgs-msg:VelocityBoundPath instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <VelocityBoundPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:poses-val is deprecated.  Use panda_ros_msgs-msg:poses instead.")
  (poses m))

(cl:ensure-generic-function 'maxV-val :lambda-list '(m))
(cl:defmethod maxV-val ((m <VelocityBoundPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_ros_msgs-msg:maxV-val is deprecated.  Use panda_ros_msgs-msg:maxV instead.")
  (maxV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityBoundPath>) ostream)
  "Serializes a message object of type '<VelocityBoundPath>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maxV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityBoundPath>) istream)
  "Deserializes a message object of type '<VelocityBoundPath>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxV) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityBoundPath>)))
  "Returns string type for a message object of type '<VelocityBoundPath>"
  "panda_ros_msgs/VelocityBoundPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityBoundPath)))
  "Returns string type for a message object of type 'VelocityBoundPath"
  "panda_ros_msgs/VelocityBoundPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityBoundPath>)))
  "Returns md5sum for a message object of type '<VelocityBoundPath>"
  "009d80e152c59dacd396e7d157b35990")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityBoundPath)))
  "Returns md5sum for a message object of type 'VelocityBoundPath"
  "009d80e152c59dacd396e7d157b35990")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityBoundPath>)))
  "Returns full string definition for message of type '<VelocityBoundPath>"
  (cl:format cl:nil "geometry_msgs/Pose[] poses~%float64 maxV~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityBoundPath)))
  "Returns full string definition for message of type 'VelocityBoundPath"
  (cl:format cl:nil "geometry_msgs/Pose[] poses~%float64 maxV~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityBoundPath>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityBoundPath>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityBoundPath
    (cl:cons ':poses (poses msg))
    (cl:cons ':maxV (maxV msg))
))
