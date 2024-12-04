; Auto-generated. Do not edit!


(cl:in-package authoring_msgs-msg)


;//! \htmlinclude Action.msg.html

(cl:defclass <Action> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (sim
    :reader sim
    :initarg :sim
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (finished
    :reader finished
    :initarg :finished
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (poses
    :reader poses
    :initarg :poses
    :type panda_ros_msgs-msg:HybridPoseArray
    :initform (cl:make-instance 'panda_ros_msgs-msg:HybridPoseArray))
   (pose
    :reader pose
    :initarg :pose
    :type panda_ros_msgs-msg:HybridPose
    :initform (cl:make-instance 'panda_ros_msgs-msg:HybridPose))
   (joint_pose
    :reader joint_pose
    :initarg :joint_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (item
    :reader item
    :initarg :item
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Action (<Action>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Action>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Action)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name authoring_msgs-msg:<Action> is deprecated: use authoring_msgs-msg:Action instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:type-val is deprecated.  Use authoring_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'sim-val :lambda-list '(m))
(cl:defmethod sim-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:sim-val is deprecated.  Use authoring_msgs-msg:sim instead.")
  (sim m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:finished-val is deprecated.  Use authoring_msgs-msg:finished instead.")
  (finished m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:poses-val is deprecated.  Use authoring_msgs-msg:poses instead.")
  (poses m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:pose-val is deprecated.  Use authoring_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'joint_pose-val :lambda-list '(m))
(cl:defmethod joint_pose-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:joint_pose-val is deprecated.  Use authoring_msgs-msg:joint_pose instead.")
  (joint_pose m))

(cl:ensure-generic-function 'item-val :lambda-list '(m))
(cl:defmethod item-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:item-val is deprecated.  Use authoring_msgs-msg:item instead.")
  (item m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader authoring_msgs-msg:velocity-val is deprecated.  Use authoring_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Action>)))
    "Constants for message type '<Action>"
  '((:PICK . 0)
    (:SCREW . 1)
    (:PLACE . 2)
    (:WIPE . 3)
    (:MOVE_OBJECT . 4)
    (:RESET . 5)
    (:MOVE . 6)
    (:MOVE_TO_CONTACT . 7)
    (:GRASP . 8)
    (:RELEASE . 9)
    (:VIEW . 10)
    (:INSPECT . 11)
    (:WAIT . 12)
    (:PUSH . 13)
    (:STOP . 14)
    (:INSERT . 15)
    (:MOVE_FORCE . 16)
    (:UNSCREW . 17)
    (:MOVE_ANGLE . 18)
    (:PULL . 19)
    (:CAMERA_VELOCITY . 20)
    (:MOVE_UNKNOWN . 21)
    (:PULL_DRAWER . 22)
    (:BIAS_FORCES . 23)
    (:DROP . 24)
    (:RELEASE_FORCE . 25))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Action)))
    "Constants for message type 'Action"
  '((:PICK . 0)
    (:SCREW . 1)
    (:PLACE . 2)
    (:WIPE . 3)
    (:MOVE_OBJECT . 4)
    (:RESET . 5)
    (:MOVE . 6)
    (:MOVE_TO_CONTACT . 7)
    (:GRASP . 8)
    (:RELEASE . 9)
    (:VIEW . 10)
    (:INSPECT . 11)
    (:WAIT . 12)
    (:PUSH . 13)
    (:STOP . 14)
    (:INSERT . 15)
    (:MOVE_FORCE . 16)
    (:UNSCREW . 17)
    (:MOVE_ANGLE . 18)
    (:PULL . 19)
    (:CAMERA_VELOCITY . 20)
    (:MOVE_UNKNOWN . 21)
    (:PULL_DRAWER . 22)
    (:BIAS_FORCES . 23)
    (:DROP . 24)
    (:RELEASE_FORCE . 25))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Action>) ostream)
  "Serializes a message object of type '<Action>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sim) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'finished) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poses) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'item) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Action>) istream)
  "Deserializes a message object of type '<Action>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sim) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'finished) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poses) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'item) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Action>)))
  "Returns string type for a message object of type '<Action>"
  "authoring_msgs/Action")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Action)))
  "Returns string type for a message object of type 'Action"
  "authoring_msgs/Action")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Action>)))
  "Returns md5sum for a message object of type '<Action>"
  "41fc65066a6b05ed16658136c65c754d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Action)))
  "Returns md5sum for a message object of type 'Action"
  "41fc65066a6b05ed16658136c65c754d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Action>)))
  "Returns full string definition for message of type '<Action>"
  (cl:format cl:nil "#Types~%uint8 PICK=0~%uint8 SCREW=1~%uint8 PLACE=2~%uint8 WIPE=3~%uint8 MOVE_OBJECT=4~%uint8 RESET=5~%uint8 MOVE=6~%uint8 MOVE_TO_CONTACT=7~%uint8 GRASP=8~%uint8 RELEASE=9~%uint8 VIEW=10~%uint8 INSPECT=11~%uint8 WAIT=12~%uint8 PUSH=13~%uint8 STOP=14~%uint8 INSERT=15~%uint8 MOVE_FORCE=16~%uint8 UNSCREW=17~%uint8 MOVE_ANGLE=18~%uint8 PULL=19~%uint8 CAMERA_VELOCITY=20~%uint8 MOVE_UNKNOWN=21~%uint8 PULL_DRAWER=22~%uint8 BIAS_FORCES=23~%uint8 DROP=24~%uint8 RELEASE_FORCE=25~%~%# Type~%uint8 type~%~%std_msgs/Bool sim~%~%std_msgs/Bool finished~%~%# HybridPoseArray (for high level planning)~%panda_ros_msgs/HybridPoseArray poses~%~%# HybridPose (for low level planning)~%panda_ros_msgs/HybridPose pose~%~%# JointState (for going to fixed position, example reset)~%float64[] joint_pose~%~%# Item~%std_msgs/String item~%~%# Velocity~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: panda_ros_msgs/HybridPoseArray~%Header header~%panda_ros_msgs/HybridPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: panda_ros_msgs/HybridPose~%# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Action)))
  "Returns full string definition for message of type 'Action"
  (cl:format cl:nil "#Types~%uint8 PICK=0~%uint8 SCREW=1~%uint8 PLACE=2~%uint8 WIPE=3~%uint8 MOVE_OBJECT=4~%uint8 RESET=5~%uint8 MOVE=6~%uint8 MOVE_TO_CONTACT=7~%uint8 GRASP=8~%uint8 RELEASE=9~%uint8 VIEW=10~%uint8 INSPECT=11~%uint8 WAIT=12~%uint8 PUSH=13~%uint8 STOP=14~%uint8 INSERT=15~%uint8 MOVE_FORCE=16~%uint8 UNSCREW=17~%uint8 MOVE_ANGLE=18~%uint8 PULL=19~%uint8 CAMERA_VELOCITY=20~%uint8 MOVE_UNKNOWN=21~%uint8 PULL_DRAWER=22~%uint8 BIAS_FORCES=23~%uint8 DROP=24~%uint8 RELEASE_FORCE=25~%~%# Type~%uint8 type~%~%std_msgs/Bool sim~%~%std_msgs/Bool finished~%~%# HybridPoseArray (for high level planning)~%panda_ros_msgs/HybridPoseArray poses~%~%# HybridPose (for low level planning)~%panda_ros_msgs/HybridPose pose~%~%# JointState (for going to fixed position, example reset)~%float64[] joint_pose~%~%# Item~%std_msgs/String item~%~%# Velocity~%geometry_msgs/Twist velocity~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: panda_ros_msgs/HybridPoseArray~%Header header~%panda_ros_msgs/HybridPose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: panda_ros_msgs/HybridPose~%# Pose~%geometry_msgs/Pose pose~%~%# Selection vector [6 (drop rotation for now)]~%uint8[] sel_vector~%~%# Desired Wrench~%geometry_msgs/Wrench wrench~%~%# Constraint Frame (might drop)~%geometry_msgs/Quaternion constraint_frame~%~%# Header~%Header header~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Action>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sim))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'finished))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poses))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'item))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Action>))
  "Converts a ROS message object to a list"
  (cl:list 'Action
    (cl:cons ':type (type msg))
    (cl:cons ':sim (sim msg))
    (cl:cons ':finished (finished msg))
    (cl:cons ':poses (poses msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':joint_pose (joint_pose msg))
    (cl:cons ':item (item msg))
    (cl:cons ':velocity (velocity msg))
))
