;; Auto-generated. Do not edit!


(when (boundp 'authoring_msgs::POIArray)
  (if (not (find-package "AUTHORING_MSGS"))
    (make-package "AUTHORING_MSGS"))
  (shadow 'POIArray (find-package "AUTHORING_MSGS")))
(unless (find-package "AUTHORING_MSGS::POIARRAY")
  (make-package "AUTHORING_MSGS::POIARRAY"))

(in-package "ROS")
;;//! \htmlinclude POIArray.msg.html


(defclass authoring_msgs::POIArray
  :super ros::object
  :slots (_poi_array ))

(defmethod authoring_msgs::POIArray
  (:init
   (&key
    ((:poi_array __poi_array) ())
    )
   (send-super :init)
   (setq _poi_array __poi_array)
   self)
  (:poi_array
   (&rest __poi_array)
   (if (keywordp (car __poi_array))
       (send* _poi_array __poi_array)
     (progn
       (if __poi_array (setq _poi_array (car __poi_array)))
       _poi_array)))
  (:serialization-length
   ()
   (+
    ;; authoring_msgs/POI[] _poi_array
    (apply #'+ (send-all _poi_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; authoring_msgs/POI[] _poi_array
     (write-long (length _poi_array) s)
     (dolist (elem _poi_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; authoring_msgs/POI[] _poi_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poi_array (let (r) (dotimes (i n) (push (instance authoring_msgs::POI :init) r)) r))
     (dolist (elem- _poi_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get authoring_msgs::POIArray :md5sum-) "705692ced92474947d1df89af3eb8c54")
(setf (get authoring_msgs::POIArray :datatype-) "authoring_msgs/POIArray")
(setf (get authoring_msgs::POIArray :definition-)
      "# POIs
authoring_msgs/POI[] poi_array

================================================================================
MSG: authoring_msgs/POI
# Type
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



(provide :authoring_msgs/POIArray "705692ced92474947d1df89af3eb8c54")


