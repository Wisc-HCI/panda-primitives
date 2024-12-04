;; Auto-generated. Do not edit!


(when (boundp 'panda_ros_msgs::VelocityBoundPath)
  (if (not (find-package "PANDA_ROS_MSGS"))
    (make-package "PANDA_ROS_MSGS"))
  (shadow 'VelocityBoundPath (find-package "PANDA_ROS_MSGS")))
(unless (find-package "PANDA_ROS_MSGS::VELOCITYBOUNDPATH")
  (make-package "PANDA_ROS_MSGS::VELOCITYBOUNDPATH"))

(in-package "ROS")
;;//! \htmlinclude VelocityBoundPath.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass panda_ros_msgs::VelocityBoundPath
  :super ros::object
  :slots (_poses _maxV ))

(defmethod panda_ros_msgs::VelocityBoundPath
  (:init
   (&key
    ((:poses __poses) ())
    ((:maxV __maxV) 0.0)
    )
   (send-super :init)
   (setq _poses __poses)
   (setq _maxV (float __maxV))
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:maxV
   (&optional __maxV)
   (if __maxV (setq _maxV __maxV)) _maxV)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; float64 _maxV
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; float64 _maxV
       (sys::poke _maxV (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _maxV
     (setq _maxV (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get panda_ros_msgs::VelocityBoundPath :md5sum-) "009d80e152c59dacd396e7d157b35990")
(setf (get panda_ros_msgs::VelocityBoundPath :datatype-) "panda_ros_msgs/VelocityBoundPath")
(setf (get panda_ros_msgs::VelocityBoundPath :definition-)
      "geometry_msgs/Pose[] poses
float64 maxV
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



(provide :panda_ros_msgs/VelocityBoundPath "009d80e152c59dacd396e7d157b35990")


