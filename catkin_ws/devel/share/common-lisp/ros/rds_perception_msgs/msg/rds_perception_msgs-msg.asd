
(cl:in-package :asdf)

(defsystem "rds_perception_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "IntersectionZone" :depends-on ("_package_IntersectionZone"))
    (:file "_package_IntersectionZone" :depends-on ("_package"))
    (:file "extent" :depends-on ("_package_extent"))
    (:file "_package_extent" :depends-on ("_package"))
    (:file "label" :depends-on ("_package_label"))
    (:file "_package_label" :depends-on ("_package"))
    (:file "track" :depends-on ("_package_track"))
    (:file "_package_track" :depends-on ("_package"))
    (:file "tracking" :depends-on ("_package_tracking"))
    (:file "_package_tracking" :depends-on ("_package"))
  ))