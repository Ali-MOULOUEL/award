;; Auto-generated. Do not edit!


(when (boundp 'rds_msgs::safety_chain_state)
  (if (not (find-package "RDS_MSGS"))
    (make-package "RDS_MSGS"))
  (shadow 'safety_chain_state (find-package "RDS_MSGS")))
(unless (find-package "RDS_MSGS::SAFETY_CHAIN_STATE")
  (make-package "RDS_MSGS::SAFETY_CHAIN_STATE"))

(in-package "ROS")
;;//! \htmlinclude safety_chain_state.msg.html


(intern "*STATE_ACTIVE*" (find-package "RDS_MSGS::SAFETY_CHAIN_STATE"))
(shadow '*STATE_ACTIVE* (find-package "RDS_MSGS::SAFETY_CHAIN_STATE"))
(defconstant rds_msgs::safety_chain_state::*STATE_ACTIVE* 0)
(intern "*STATE_DISABLED*" (find-package "RDS_MSGS::SAFETY_CHAIN_STATE"))
(shadow '*STATE_DISABLED* (find-package "RDS_MSGS::SAFETY_CHAIN_STATE"))
(defconstant rds_msgs::safety_chain_state::*STATE_DISABLED* 1)
(intern "*STATE_FAILSOFT*" (find-package "RDS_MSGS::SAFETY_CHAIN_STATE"))
(shadow '*STATE_FAILSOFT* (find-package "RDS_MSGS::SAFETY_CHAIN_STATE"))
(defconstant rds_msgs::safety_chain_state::*STATE_FAILSOFT* 2)

(defun rds_msgs::safety_chain_state-to-symbol (const)
  (cond
        ((= const 0) 'rds_msgs::safety_chain_state::*STATE_ACTIVE*)
        ((= const 1) 'rds_msgs::safety_chain_state::*STATE_DISABLED*)
        ((= const 2) 'rds_msgs::safety_chain_state::*STATE_FAILSOFT*)
        (t nil)))

(defclass rds_msgs::safety_chain_state
  :super ros::object
  :slots (_state ))

(defmethod rds_msgs::safety_chain_state
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_msgs::safety_chain_state :md5sum-) "4c854c67ecd4d86925912568f00ec3d5")
(setf (get rds_msgs::safety_chain_state :datatype-) "rds_msgs/safety_chain_state")
(setf (get rds_msgs::safety_chain_state :definition-)
      "uint8 STATE_ACTIVE = 0
uint8 STATE_DISABLED = 1
uint8 STATE_FAILSOFT = 2

uint8 state

")



(provide :rds_msgs/safety_chain_state "4c854c67ecd4d86925912568f00ec3d5")


