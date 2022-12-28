;; Auto-generated. Do not edit!


(when (boundp 'rds_anticollision::start_mission_state)
  (if (not (find-package "RDS_ANTICOLLISION"))
    (make-package "RDS_ANTICOLLISION"))
  (shadow 'start_mission_state (find-package "RDS_ANTICOLLISION")))
(unless (find-package "RDS_ANTICOLLISION::START_MISSION_STATE")
  (make-package "RDS_ANTICOLLISION::START_MISSION_STATE"))

(in-package "ROS")
;;//! \htmlinclude start_mission_state.msg.html


(intern "*STATE_NOT_SUPPORTED*" (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(shadow '*STATE_NOT_SUPPORTED* (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(defconstant rds_anticollision::start_mission_state::*STATE_NOT_SUPPORTED* 0)
(intern "*STATE_NOT_TRIGGERABLE*" (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(shadow '*STATE_NOT_TRIGGERABLE* (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(defconstant rds_anticollision::start_mission_state::*STATE_NOT_TRIGGERABLE* 1)
(intern "*STATE_TRIGGERABLE*" (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(shadow '*STATE_TRIGGERABLE* (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(defconstant rds_anticollision::start_mission_state::*STATE_TRIGGERABLE* 2)
(intern "*STATE_TRIGGERED*" (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(shadow '*STATE_TRIGGERED* (find-package "RDS_ANTICOLLISION::START_MISSION_STATE"))
(defconstant rds_anticollision::start_mission_state::*STATE_TRIGGERED* 3)

(defun rds_anticollision::start_mission_state-to-symbol (const)
  (cond
        ((= const 0) 'rds_anticollision::start_mission_state::*STATE_NOT_SUPPORTED*)
        ((= const 1) 'rds_anticollision::start_mission_state::*STATE_NOT_TRIGGERABLE*)
        ((= const 2) 'rds_anticollision::start_mission_state::*STATE_TRIGGERABLE*)
        ((= const 3) 'rds_anticollision::start_mission_state::*STATE_TRIGGERED*)
        (t nil)))

(defclass rds_anticollision::start_mission_state
  :super ros::object
  :slots (_state ))

(defmethod rds_anticollision::start_mission_state
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

(setf (get rds_anticollision::start_mission_state :md5sum-) "a82ad9077eb8e1a28927c3da9649ad09")
(setf (get rds_anticollision::start_mission_state :datatype-) "rds_anticollision/start_mission_state")
(setf (get rds_anticollision::start_mission_state :definition-)
      "uint8 STATE_NOT_SUPPORTED = 0
uint8 STATE_NOT_TRIGGERABLE = 1
uint8 STATE_TRIGGERABLE = 2
uint8 STATE_TRIGGERED = 3

uint8 state

")



(provide :rds_anticollision/start_mission_state "a82ad9077eb8e1a28927c3da9649ad09")


