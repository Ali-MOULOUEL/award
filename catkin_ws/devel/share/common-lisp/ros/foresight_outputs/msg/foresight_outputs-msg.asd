
(cl:in-package :asdf)

(defsystem "foresight_outputs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BoundBox" :depends-on ("_package_BoundBox"))
    (:file "_package_BoundBox" :depends-on ("_package"))
    (:file "Frames" :depends-on ("_package_Frames"))
    (:file "_package_Frames" :depends-on ("_package"))
    (:file "Obstacle" :depends-on ("_package_Obstacle"))
    (:file "_package_Obstacle" :depends-on ("_package"))
  ))