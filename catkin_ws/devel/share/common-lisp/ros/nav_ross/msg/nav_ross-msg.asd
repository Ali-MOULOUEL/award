
(cl:in-package :asdf)

(defsystem "nav_ross-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "nav_msg" :depends-on ("_package_nav_msg"))
    (:file "_package_nav_msg" :depends-on ("_package"))
  ))