
(cl:in-package :asdf)

(defsystem "panda_ros_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HybridPose" :depends-on ("_package_HybridPose"))
    (:file "_package_HybridPose" :depends-on ("_package"))
    (:file "HybridPoseArray" :depends-on ("_package_HybridPoseArray"))
    (:file "_package_HybridPoseArray" :depends-on ("_package"))
    (:file "JointPose" :depends-on ("_package_JointPose"))
    (:file "_package_JointPose" :depends-on ("_package"))
    (:file "VelocityBoundPath" :depends-on ("_package_VelocityBoundPath"))
    (:file "_package_VelocityBoundPath" :depends-on ("_package"))
  ))