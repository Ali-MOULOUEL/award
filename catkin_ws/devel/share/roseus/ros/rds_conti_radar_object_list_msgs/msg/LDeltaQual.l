;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::LDeltaQual)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'LDeltaQual (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))

(in-package "ROS")
;;//! \htmlinclude LDeltaQual.msg.html


(intern "*LDELTAQUAL_ALL_INVALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_ALL_INVALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_ALL_INVALID* 0)
(intern "*LDELTAQUAL_LEFT_VALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_LEFT_VALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_LEFT_VALID* 1)
(intern "*LDELTAQUAL_MID_VALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_MID_VALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_MID_VALID* 2)
(intern "*LDELTAQUAL_LEFT_MID_VALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_LEFT_MID_VALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_LEFT_MID_VALID* 3)
(intern "*LDELTAQUAL_RIGHT_VALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_RIGHT_VALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_RIGHT_VALID* 4)
(intern "*LDELTAQUAL_RIGHT_LEFT_VALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_RIGHT_LEFT_VALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_RIGHT_LEFT_VALID* 5)
(intern "*LDELTAQUAL_RIGHT_MID_VALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_RIGHT_MID_VALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_RIGHT_MID_VALID* 6)
(intern "*LDELTAQUAL_ALL_VALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(shadow '*LDELTAQUAL_ALL_VALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::LDELTAQUAL"))
(defconstant rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_ALL_VALID* 7)

(defun rds_conti_radar_object_list_msgs::LDeltaQual-to-symbol (const)
  (cond
        ((= const 0) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_ALL_INVALID*)
        ((= const 1) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_LEFT_VALID*)
        ((= const 2) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_MID_VALID*)
        ((= const 3) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_LEFT_MID_VALID*)
        ((= const 4) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_RIGHT_VALID*)
        ((= const 5) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_RIGHT_LEFT_VALID*)
        ((= const 6) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_RIGHT_MID_VALID*)
        ((= const 7) 'rds_conti_radar_object_list_msgs::LDeltaQual::*LDELTAQUAL_ALL_VALID*)
        (t nil)))

(defclass rds_conti_radar_object_list_msgs::LDeltaQual
  :super ros::object
  :slots (_LDeltaQual ))

(defmethod rds_conti_radar_object_list_msgs::LDeltaQual
  (:init
   (&key
    ((:LDeltaQual __LDeltaQual) 0)
    )
   (send-super :init)
   (setq _LDeltaQual (round __LDeltaQual))
   self)
  (:LDeltaQual
   (&optional __LDeltaQual)
   (if __LDeltaQual (setq _LDeltaQual __LDeltaQual)) _LDeltaQual)
  (:serialization-length
   ()
   (+
    ;; uint8 _LDeltaQual
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _LDeltaQual
       (write-byte _LDeltaQual s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _LDeltaQual
     (setq _LDeltaQual (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::LDeltaQual :md5sum-) "46a34ed6db73a66ffc285aa58260c6bd")
(setf (get rds_conti_radar_object_list_msgs::LDeltaQual :datatype-) "rds_conti_radar_object_list_msgs/LDeltaQual")
(setf (get rds_conti_radar_object_list_msgs::LDeltaQual :definition-)
      "#RadarObject LDeltaQual field : Quality of OBB distances
uint8 LDELTAQUAL_ALL_INVALID = 0
uint8 LDELTAQUAL_LEFT_VALID =1
uint8 LDELTAQUAL_MID_VALID = 2
uint8 LDELTAQUAL_LEFT_MID_VALID = 3
uint8 LDELTAQUAL_RIGHT_VALID = 4
uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5
uint8 LDELTAQUAL_RIGHT_MID_VALID = 6
uint8 LDELTAQUAL_ALL_VALID = 7

uint8 LDeltaQual
")



(provide :rds_conti_radar_object_list_msgs/LDeltaQual "46a34ed6db73a66ffc285aa58260c6bd")


