; Auto-generated. Do not edit!


(cl:in-package authoring_msgs-msg)


;//! \htmlinclude POIArray.msg.html

(cl:defclass <POIArray> (roslisp-msg-protocol:ros-message)
  ((poi_array
    :reader poi_array
    :initarg :poi_array
    :type (cl:vector authoring_msgs-msg:POI)
   :initform (cl:make-array 0 :element-type 'authoring_msgs-msg:POI :initial-element (cl:make-instance 'authoring_msgs-msg:POI))))
)

(cl:defclass POIArray (<POIArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <POIArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'POIArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name authoring_msgs-msg:<POIArray> is deprecated: use authoring_msgs-msg:POIArray instead.")))

(cl:ensure-generic-function 'poi_array-val :lambda-list '(m))
(cl:defmethod poi_array-val ((m <POIArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:poi_array-val is deprecated.  Use authoring_msgs-msg:poi_array instead.")
  (poi_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <POIArray>) ostream)
  "Serializes a message object of type '<POIArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poi_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poi_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <POIArray>) istream)
  "Deserializes a message object of type '<POIArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poi_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poi_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'authoring_msgs-msg:POI))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<POIArray>)))
  "Returns string type for a message object of type '<POIArray>"
  "authoring_msgs/POIArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'POIArray)))
  "Returns string type for a message object of type 'POIArray"
  "authoring_msgs/POIArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<POIArray>)))
  "Returns md5sum for a message object of type '<POIArray>"
  "705692ced92474947d1df89af3eb8c54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'POIArray)))
  "Returns md5sum for a message object of type 'POIArray"
  "705692ced92474947d1df89af3eb8c54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<POIArray>)))
  "Returns full string definition for message of type '<POIArray>"
  (cl:format cl:nil "# POIs~%authoring_msgs/POI[] poi_array~%~%================================================================================~%MSG: authoring_msgs/POI~%# Type~%std_msgs/String type~%~%# ID~%uint8 id~%~%# State~%std_msgs/String state~%~%# Age~%uint8 age~%~%# PoseStamped~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'POIArray)))
  "Returns full string definition for message of type 'POIArray"
  (cl:format cl:nil "# POIs~%authoring_msgs/POI[] poi_array~%~%================================================================================~%MSG: authoring_msgs/POI~%# Type~%std_msgs/String type~%~%# ID~%uint8 id~%~%# State~%std_msgs/String state~%~%# Age~%uint8 age~%~%# PoseStamped~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <POIArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poi_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <POIArray>))
  "Converts a ROS message object to a list"
  (cl:list 'POIArray
    (cl:cons ':poi_array (poi_array msg))
))
