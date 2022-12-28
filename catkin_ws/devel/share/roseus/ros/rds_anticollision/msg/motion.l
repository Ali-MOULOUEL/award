;; Auto-generated. Do not edit!


(when (boundp 'rds_anticollision::motion)
  (if (not (find-package "RDS_ANTICOLLISION"))
    (make-package "RDS_ANTICOLLISION"))
  (shadow 'motion (find-package "RDS_ANTICOLLISION")))
(unless (find-package "RDS_ANTICOLLISION::MOTION")
  (make-package "RDS_ANTICOLLISION::MOTION"))

(in-package "ROS")
;;//! \htmlinclude motion.msg.html


(intern "*MOTION_UNKNOWN*" (find-package "RDS_ANTICOLLISION::MOTION"))
(shadow '*MOTION_UNKNOWN* (find-package "RDS_ANTICOLLISION::MOTION"))
(defconstant rds_anticollision::motion::*MOTION_UNKNOWN* 0)
(intern "*MOTION_MOVING*" (find-package "RDS_ANTICOLLISION::MOTION"))
(shadow '*MOTION_MOVING* (find-package "RDS_ANTICOLLISION::MOTION"))
(defconstant rds_anticollision::motion::*MOTION_MOVING* 1)
(intern "*MOTION_NULL_SPEED*" (find-package "RDS_ANTICOLLISION::MOTION"))
(shadow '*MOTION_NULL_SPEED* (find-package "RDS_ANTICOLLISION::MOTION"))
(defconstant rds_anticollision::motion::*MOTION_NULL_SPEED* 2)
(intern "*MOTION_PARKED*" (find-package "RDS_ANTICOLLISION::MOTION"))
(shadow '*MOTION_PARKED* (find-package "RDS_ANTICOLLISION::MOTION"))
(defconstant rds_anticollision::motion::*MOTION_PARKED* 3)

(defun rds_anticollision::motion-to-symbol (const)
  (cond
        ((= const 0) 'rds_anticollision::motion::*MOTION_UNKNOWN*)
        ((= const 1) 'rds_anticollision::motion::*MOTION_MOVING*)
        ((= const 2) 'rds_anticollision::motion::*MOTION_NULL_SPEED*)
        ((= const 3) 'rds_anticollision::motion::*MOTION_PARKED*)
        (t nil)))

(defclass rds_anticollision::motion
  :super ros::object
  :slots (_motion ))

(defmethod rds_anticollision::motion
  (:init
   (&key
    ((:motion __motion) 0)
    )
   (send-super :init)
   (setq _motion (round __motion))
   self)
  (:motion
   (&optional __motion)
   (if __motion (setq _motion __motion)) _motion)
  (:serialization-length
   ()
   (+
    ;; uint8 _motion
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _motion
       (write-byte _motion s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _motion
     (setq _motion (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_anticollision::motion :md5sum-) "b51040594c3742731f9d75a1c817e1f9")
(setf (get rds_anticollision::motion :datatype-) "rds_anticollision/motion")
(setf (get rds_anticollision::motion :definition-)
      "# Motion type
uint8 MOTION_UNKNOWN = 0
uint8 MOTION_MOVING = 1
uint8 MOTION_NULL_SPEED = 2
uint8 MOTION_PARKED = 3

uint8 motion

")



(provide :rds_anticollision/motion "b51040594c3742731f9d75a1c817e1f9")


