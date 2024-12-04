; Auto-generated. Do not edit!


(cl:in-package authoring_msgs-msg)


;//! \htmlinclude Command.msg.html

(cl:defclass <Command> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (core_action
    :reader core_action
    :initarg :core_action
    :type (cl:vector authoring_msgs-msg:Action)
   :initform (cl:make-array 0 :element-type 'authoring_msgs-msg:Action :initial-element (cl:make-instance 'authoring_msgs-msg:Action))))
)

(cl:defclass Command (<Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name authoring_msgs-msg:<Command> is deprecated: use authoring_msgs-msg:Command instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:type-val is deprecated.  Use authoring_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'core_action-val :lambda-list '(m))
(cl:defmethod core_action-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:core_action-val is deprecated.  Use authoring_msgs-msg:core_action instead.")
  (core_action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Command>)))
    "Constants for message type '<Command>"
  '((:VIZ . 0)
    (:SIM . 1)
    (:EXEC . 2)
    (:EDIT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Command)))
    "Constants for message type 'Command"
  '((:VIZ . 0)
    (:SIM . 1)
    (:EXEC . 2)
    (:EDIT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Command>) ostream)
  "Serializes a message object of type '<Command>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'core_action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'core_action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Command>) istream)
  "Deserializes a message object of type '<Command>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'core_action) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'core_action)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'authoring_msgs-msg:Action))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Command>)))
  "Returns string type for a message object of type '<Command>"
  "authoring_msgs/Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Command)))
  "Returns string type for a message object of type 'Command"
  "authoring_msgs/Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Command>)))
  "Returns md5sum for a message object of type '<Command>"
  "a8baf140351835cbf3fe6136ce58b889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Command)))
  "Returns md5sum for a message object of type 'Command"
  "a8baf140351835cbf3fe6136ce58b889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Command>)))
  "Returns full string definition for message of type '<Command>"
  (cl:format cl:nil "#Types~%uint8 VIZ=0~%uint8 SIM=1~%uint8 EXEC=2~%uint8 EDIT=3~%~%uint8 type~%~%# Actions~%authoring_msgs/Action[] core_action~%~%================================================================================~%MSG: authoring_msgs/Action~%#Types~%uint8 PICK=0~%uint8 SCREW=1~%uint8 PLACE=2~%uint8 WIPE=3~%uint8 MOVE_OBJECT=4~%uint8 RESET=5~%uint8 MOVE=6~%uint8 MOVE_TO_CONTACT=7~%uint8 GRASP=8~%uint8 RELEASE=9~%uint8 VIEW=10~%uint8 INSPECT=11~%uint8 WAIT=12~%uint8 PUSH=13~%uint8 STOP=14~%uint8 INSERT=15~%uint8 MOVE_FORCE=16~%uint8 UNSCREW=17~%uint8 MOVE_ANGLE=18~%uint8 PULL=19~%uint8 CAMERA_VELOCITY=20~%uint8 MOVE_UNKNOWN=21~%uint8 PULL_DRAWER=22~%uint8 BIAS_FORCES=23~%uint8 DROP=24~%uint8 RELEASE_FORCE=25~%~%# Type~%uint8 type~%~%std_msgs/Bool sim~%~%std_msgs/Bool finished~%~%# HybridPoseArray (for high level planning)~%panda_ros_msgs/HybridPoseArray poses~%~%# HybridPose (for low level planning)~%panda_ros_msgs/HybridPose pose~%~%# JointState (for going to fixed position, example reset)~%float64[] joint_pose~%~%# Item~%std_msgs/String item~%~%# Velocity~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: panda_ros_msgs/HybridPoseArray~%Header header~%panda_ros_msgs/HybridPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: panda_ros_msgs/HybridPose~%# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Command)))
  "Returns full string definition for message of type 'Command"
  (cl:format cl:nil "#Types~%uint8 VIZ=0~%uint8 SIM=1~%uint8 EXEC=2~%uint8 EDIT=3~%~%uint8 type~%~%# Actions~%authoring_msgs/Action[] core_action~%~%================================================================================~%MSG: authoring_msgs/Action~%#Types~%uint8 PICK=0~%uint8 SCREW=1~%uint8 PLACE=2~%uint8 WIPE=3~%uint8 MOVE_OBJECT=4~%uint8 RESET=5~%uint8 MOVE=6~%uint8 MOVE_TO_CONTACT=7~%uint8 GRASP=8~%uint8 RELEASE=9~%uint8 VIEW=10~%uint8 INSPECT=11~%uint8 WAIT=12~%uint8 PUSH=13~%uint8 STOP=14~%uint8 INSERT=15~%uint8 MOVE_FORCE=16~%uint8 UNSCREW=17~%uint8 MOVE_ANGLE=18~%uint8 PULL=19~%uint8 CAMERA_VELOCITY=20~%uint8 MOVE_UNKNOWN=21~%uint8 PULL_DRAWER=22~%uint8 BIAS_FORCES=23~%uint8 DROP=24~%uint8 RELEASE_FORCE=25~%~%# Type~%uint8 type~%~%std_msgs/Bool sim~%~%std_msgs/Bool finished~%~%# HybridPoseArray (for high level planning)~%panda_ros_msgs/HybridPoseArray poses~%~%# HybridPose (for low level planning)~%panda_ros_msgs/HybridPose pose~%~%# JointState (for going to fixed position, example reset)~%float64[] joint_pose~%~%# Item~%std_msgs/String item~%~%# Velocity~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: panda_ros_msgs/HybridPoseArray~%Header header~%panda_ros_msgs/HybridPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: panda_ros_msgs/HybridPose~%# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Command>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'core_action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Command>))
  "Converts a ROS message object to a list"
  (cl:list 'Command
    (cl:cons ':type (type msg))
    (cl:cons ':core_action (core_action msg))
))
