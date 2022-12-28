;; Auto-generated. Do not edit!


(when (boundp 'rds_msgs::motion)
  (if (not (find-package "RDS_MSGS"))
    (make-package "RDS_MSGS"))
  (shadow 'motion (find-package "RDS_MSGS")))
(unless (find-package "RDS_MSGS::MOTION")
  (make-package "RDS_MSGS::MOTION"))

(in-package "ROS")
;;//! \htmlinclude motion.msg.html


(intern "*MOTION_UNKNOWN*" (find-package "RDS_MSGS::MOTION"))
(shadow '*MOTION_UNKNOWN* (find-package "RDS_MSGS::MOTION"))
(defconstant rds_msgs::motion::*MOTION_UNKNOWN* 0)
(intern "*MOTION_MOVING*" (find-package "RDS_MSGS::MOTION"))
(shadow '*MOTION_MOVING* (find-package "RDS_MSGS::MOTION"))
(defconstant rds_msgs::motion::*MOTION_MOVING* 1)
(intern "*MOTION_NULL_SPEED*" (find-package "RDS_MSGS::MOTION"))
(shadow '*MOTION_NULL_SPEED* (find-package "RDS_MSGS::MOTION"))
(defconstant rds_msgs::motion::*MOTION_NULL_SPEED* 2)
(intern "*MOTION_PARKED*" (find-package "RDS_MSGS::MOTION"))
(shadow '*MOTION_PARKED* (find-package "RDS_MSGS::MOTION"))
(defconstant rds_msgs::motion::*MOTION_PARKED* 3)

(defun rds_msgs::motion-to-symbol (const)
  (cond
        ((= const 0) 'rds_msgs::motion::*MOTION_UNKNOWN*)
        ((= const 1) 'rds_msgs::motion::*MOTION_MOVING*)
        ((= const 2) 'rds_msgs::motion::*MOTION_NULL_SPEED*)
        ((= const 3) 'rds_msgs::motion::*MOTION_PARKED*)
        (t nil)))

(defclass rds_msgs::motion
  :super ros::object
  :slots (_motion ))

(defmethod rds_msgs::motion
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

(setf (get rds_msgs::motion :md5sum-) "b51040594c3742731f9d75a1c817e1f9")
(setf (get rds_msgs::motion :datatype-) "rds_msgs/motion")
(setf (get rds_msgs::motion :definition-)
      "# Motion type
uint8 MOTION_UNKNOWN = 0
uint8 MOTION_MOVING = 1
uint8 MOTION_NULL_SPEED = 2
uint8 MOTION_PARKED = 3

uint8 motion

")



(provide :rds_msgs/motion "b51040594c3742731f9d75a1c817e1f9")


