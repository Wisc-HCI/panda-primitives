;; Auto-generated. Do not edit!


(when (boundp 'authoring_msgs::POI)
  (if (not (find-package "AUTHORING_MSGS"))
    (make-package "AUTHORING_MSGS"))
  (shadow 'POI (find-package "AUTHORING_MSGS")))
(unless (find-package "AUTHORING_MSGS::POI")
  (make-package "AUTHORING_MSGS::POI"))

(in-package "ROS")
;;//! \htmlinclude POI.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass authoring_msgs::POI
  :super ros::object
  :slots (_type _id _state _age _pose ))

(defmethod authoring_msgs::POI
  (:init
   (&key
    ((:type __type) (instance std_msgs::String :init))
    ((:id __id) 0)
    ((:state __state) (instance std_msgs::String :init))
    ((:age __age) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _type __type)
   (setq _id (round __id))
   (setq _state __state)
   (setq _age (round __age))
   (setq _pose __pose)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _type
    (send _type :serialization-length)
    ;; uint8 _id
    1
    ;; std_msgs/String _state
    (send _state :serialization-length)
    ;; uint8 _age
    1
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _type
       (send _type :serialize s)
     ;; uint8 _id
       (write-byte _id s)
     ;; std_msgs/String _state
       (send _state :serialize s)
     ;; uint8 _age
       (write-byte _age s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/String _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get authoring_msgs::POI :md5sum-) "4537f0ac14a21e77b6975b4bbfc9188a")
(setf (get authoring_msgs::POI :datatype-) "authoring_msgs/POI")
(setf (get authoring_msgs::POI :definition-)
      "# Type
std_msgs/String type

# ID
uint8 id

# State
std_msgs/String state

# Age
uint8 age

# PoseStamped
geometry_msgs/PoseStamped pose

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

")



(provide :authoring_msgs/POI "4537f0ac14a21e77b6975b4bbfc9188a")


