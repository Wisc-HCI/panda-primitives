
(cl:in-package :asdf)

(defsystem "authoring_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :panda_ros_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Action" :depends-on ("_package_Action"))
    (:file "_package_Action" :depends-on ("_package"))
    (:file "AuthoringAction" :depends-on ("_package_AuthoringAction"))
    (:file "_package_AuthoringAction" :depends-on ("_package"))
    (:file "AuthoringActionFeedback" :depends-on ("_package_AuthoringActionFeedback"))
    (:file "_package_AuthoringActionFeedback" :depends-on ("_package"))
    (:file "AuthoringActionGoal" :depends-on ("_package_AuthoringActionGoal"))
    (:file "_package_AuthoringActionGoal" :depends-on ("_package"))
    (:file "AuthoringActionResult" :depends-on ("_package_AuthoringActionResult"))
    (:file "_package_AuthoringActionResult" :depends-on ("_package"))
    (:file "AuthoringFeedback" :depends-on ("_package_AuthoringFeedback"))
    (:file "_package_AuthoringFeedback" :depends-on ("_package"))
    (:file "AuthoringGoal" :depends-on ("_package_AuthoringGoal"))
    (:file "_package_AuthoringGoal" :depends-on ("_package"))
    (:file "AuthoringResult" :depends-on ("_package_AuthoringResult"))
    (:file "_package_AuthoringResult" :depends-on ("_package"))
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "POI" :depends-on ("_package_POI"))
    (:file "_package_POI" :depends-on ("_package"))
    (:file "POIArray" :depends-on ("_package_POIArray"))
    (:file "_package_POIArray" :depends-on ("_package"))
  ))