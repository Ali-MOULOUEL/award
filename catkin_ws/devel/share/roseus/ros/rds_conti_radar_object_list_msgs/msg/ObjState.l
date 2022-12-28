;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::ObjState)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'ObjState (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))

(in-package "ROS")
;;//! \htmlinclude ObjState.msg.html


(intern "*OBJSTATE_DELETED*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(shadow '*OBJSTATE_DELETED* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(defconstant rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_DELETED* 0)
(intern "*OBJSTATE_NEW*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(shadow '*OBJSTATE_NEW* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(defconstant rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_NEW* 1)
(intern "*OBJSTATE_MEASURED*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(shadow '*OBJSTATE_MEASURED* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(defconstant rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_MEASURED* 2)
(intern "*OBJSTATE_PREDICTED*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(shadow '*OBJSTATE_PREDICTED* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJSTATE"))
(defconstant rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_PREDICTED* 3)

(defun rds_conti_radar_object_list_msgs::ObjState-to-symbol (const)
  (cond
        ((= const 0) 'rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_DELETED*)
        ((= const 1) 'rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_NEW*)
        ((= const 2) 'rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_MEASURED*)
        ((= const 3) 'rds_conti_radar_object_list_msgs::ObjState::*OBJSTATE_PREDICTED*)
        (t nil)))

(defclass rds_conti_radar_object_list_msgs::ObjState
  :super ros::object
  :slots (_ObjState ))

(defmethod rds_conti_radar_object_list_msgs::ObjState
  (:init
   (&key
    ((:ObjState __ObjState) 0)
    )
   (send-super :init)
   (setq _ObjState (round __ObjState))
   self)
  (:ObjState
   (&optional __ObjState)
   (if __ObjState (setq _ObjState __ObjState)) _ObjState)
  (:serialization-length
   ()
   (+
    ;; uint8 _ObjState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ObjState
       (write-byte _ObjState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ObjState
     (setq _ObjState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::ObjState :md5sum-) "81b9ceedc1cd61a2e377a5bb984f61bb")
(setf (get rds_conti_radar_object_list_msgs::ObjState :datatype-) "rds_conti_radar_object_list_msgs/ObjState")
(setf (get rds_conti_radar_object_list_msgs::ObjState :definition-)
      "#Radarobject ObjState field
uint8 OBJSTATE_DELETED = 0
uint8 OBJSTATE_NEW = 1
uint8 OBJSTATE_MEASURED = 2
uint8 OBJSTATE_PREDICTED = 3

uint8 ObjState
")



(provide :rds_conti_radar_object_list_msgs/ObjState "81b9ceedc1cd61a2e377a5bb984f61bb")


