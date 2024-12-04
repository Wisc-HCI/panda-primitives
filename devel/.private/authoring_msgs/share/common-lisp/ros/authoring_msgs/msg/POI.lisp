; Auto-generated. Do not edit!


(cl:in-package authoring_msgs-msg)


;//! \htmlinclude POI.msg.html

(cl:defclass <POI> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass POI (<POI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <POI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'POI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name authoring_msgs-msg:<POI> is deprecated: use authoring_msgs-msg:POI instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <POI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:type-val is deprecated.  Use authoring_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <POI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:id-val is deprecated.  Use authoring_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <POI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:state-val is deprecated.  Use authoring_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <POI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:age-val is deprecated.  Use authoring_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <POI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:pose-val is deprecated.  Use authoring_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <POI>) ostream)
  "Serializes a message object of type '<POI>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <POI>) istream)
  "Deserializes a message object of type '<POI>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<POI>)))
  "Returns string type for a message object of type '<POI>"
  "authoring_msgs/POI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'POI)))
  "Returns string type for a message object of type 'POI"
  "authoring_msgs/POI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<POI>)))
  "Returns md5sum for a message object of type '<POI>"
  "4537f0ac14a21e77b6975b4bbfc9188a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'POI)))
  "Returns md5sum for a message object of type 'POI"
  "4537f0ac14a21e77b6975b4bbfc9188a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<POI>)))
  "Returns full string definition for message of type '<POI>"
  (cl:format cl:nil "# Type~%std_msgs/String type~%~%# ID~%uint8 id~%~%# State~%std_msgs/String state~%~%# Age~%uint8 age~%~%# PoseStamped~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'POI)))
  "Returns full string definition for message of type 'POI"
  (cl:format cl:nil "# Type~%std_msgs/String type~%~%# ID~%uint8 id~%~%# State~%std_msgs/String state~%~%# Age~%uint8 age~%~%# PoseStamped~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <POI>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <POI>))
  "Converts a ROS message object to a list"
  (cl:list 'POI
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':state (state msg))
    (cl:cons ':age (age msg))
    (cl:cons ':pose (pose msg))
))
