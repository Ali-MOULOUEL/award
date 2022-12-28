;; Auto-generated. Do not edit!


(when (boundp 'rds_anticollision::ability)
  (if (not (find-package "RDS_ANTICOLLISION"))
    (make-package "RDS_ANTICOLLISION"))
  (shadow 'ability (find-package "RDS_ANTICOLLISION")))
(unless (find-package "RDS_ANTICOLLISION::ABILITY")
  (make-package "RDS_ANTICOLLISION::ABILITY"))

(in-package "ROS")
;;//! \htmlinclude ability.msg.html


(intern "*ABILITY_NOT_APPLICABLE*" (find-package "RDS_ANTICOLLISION::ABILITY"))
(shadow '*ABILITY_NOT_APPLICABLE* (find-package "RDS_ANTICOLLISION::ABILITY"))
(defconstant rds_anticollision::ability::*ABILITY_NOT_APPLICABLE* -1)
(intern "*ABILITY_NOT_AVAILABLE*" (find-package "RDS_ANTICOLLISION::ABILITY"))
(shadow '*ABILITY_NOT_AVAILABLE* (find-package "RDS_ANTICOLLISION::ABILITY"))
(defconstant rds_anticollision::ability::*ABILITY_NOT_AVAILABLE* 0)
(intern "*ABILITY_TRUE*" (find-package "RDS_ANTICOLLISION::ABILITY"))
(shadow '*ABILITY_TRUE* (find-package "RDS_ANTICOLLISION::ABILITY"))
(defconstant rds_anticollision::ability::*ABILITY_TRUE* 1)
(intern "*ABILITY_FALSE*" (find-package "RDS_ANTICOLLISION::ABILITY"))
(shadow '*ABILITY_FALSE* (find-package "RDS_ANTICOLLISION::ABILITY"))
(defconstant rds_anticollision::ability::*ABILITY_FALSE* 2)

(defun rds_anticollision::ability-to-symbol (const)
  (cond
        ((= const -1) 'rds_anticollision::ability::*ABILITY_NOT_APPLICABLE*)
        ((= const 0) 'rds_anticollision::ability::*ABILITY_NOT_AVAILABLE*)
        ((= const 1) 'rds_anticollision::ability::*ABILITY_TRUE*)
        ((= const 2) 'rds_anticollision::ability::*ABILITY_FALSE*)
        (t nil)))

(defclass rds_anticollision::ability
  :super ros::object
  :slots (_ability ))

(defmethod rds_anticollision::ability
  (:init
   (&key
    ((:ability __ability) 0)
    )
   (send-super :init)
   (setq _ability (round __ability))
   self)
  (:ability
   (&optional __ability)
   (if __ability (setq _ability __ability)) _ability)
  (:serialization-length
   ()
   (+
    ;; int8 _ability
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ability
       (write-byte _ability s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ability
     (setq _ability (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ability 127) (setq _ability (- _ability 256)))
   ;;
   self)
  )

(setf (get rds_anticollision::ability :md5sum-) "6a11a918a995a6a669d08889ae70ed8d")
(setf (get rds_anticollision::ability :datatype-) "rds_anticollision/ability")
(setf (get rds_anticollision::ability :definition-)
      "int8 ABILITY_NOT_APPLICABLE = -1
int8 ABILITY_NOT_AVAILABLE = 0 
int8 ABILITY_TRUE = 1
int8 ABILITY_FALSE = 2

int8 ability

")



(provide :rds_anticollision/ability "6a11a918a995a6a669d08889ae70ed8d")


