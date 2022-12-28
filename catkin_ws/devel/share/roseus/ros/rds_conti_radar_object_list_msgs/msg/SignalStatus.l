;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::SignalStatus)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'SignalStatus (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SignalStatus.msg.html


(intern "*SIGNALSTATUS_EM_SIGSTATE_INIT*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS"))
(shadow '*SIGNALSTATUS_EM_SIGSTATE_INIT* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS"))
(defconstant rds_conti_radar_object_list_msgs::SignalStatus::*SIGNALSTATUS_EM_SIGSTATE_INIT* 0)
(intern "*SIGNALSTATUS_EM_SIGSTATE_OK*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS"))
(shadow '*SIGNALSTATUS_EM_SIGSTATE_OK* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS"))
(defconstant rds_conti_radar_object_list_msgs::SignalStatus::*SIGNALSTATUS_EM_SIGSTATE_OK* 1)
(intern "*SIGNALSTATUS_EM_SIGSTATE_INVALID*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS"))
(shadow '*SIGNALSTATUS_EM_SIGSTATE_INVALID* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SIGNALSTATUS"))
(defconstant rds_conti_radar_object_list_msgs::SignalStatus::*SIGNALSTATUS_EM_SIGSTATE_INVALID* 2)

(defun rds_conti_radar_object_list_msgs::SignalStatus-to-symbol (const)
  (cond
        ((= const 0) 'rds_conti_radar_object_list_msgs::SignalStatus::*SIGNALSTATUS_EM_SIGSTATE_INIT*)
        ((= const 1) 'rds_conti_radar_object_list_msgs::SignalStatus::*SIGNALSTATUS_EM_SIGSTATE_OK*)
        ((= const 2) 'rds_conti_radar_object_list_msgs::SignalStatus::*SIGNALSTATUS_EM_SIGSTATE_INVALID*)
        (t nil)))

(defclass rds_conti_radar_object_list_msgs::SignalStatus
  :super ros::object
  :slots (_SignalStatus ))

(defmethod rds_conti_radar_object_list_msgs::SignalStatus
  (:init
   (&key
    ((:SignalStatus __SignalStatus) 0)
    )
   (send-super :init)
   (setq _SignalStatus (round __SignalStatus))
   self)
  (:SignalStatus
   (&optional __SignalStatus)
   (if __SignalStatus (setq _SignalStatus __SignalStatus)) _SignalStatus)
  (:serialization-length
   ()
   (+
    ;; uint8 _SignalStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _SignalStatus
       (write-byte _SignalStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _SignalStatus
     (setq _SignalStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::SignalStatus :md5sum-) "896b07484a13b3414e94543ebb8cffac")
(setf (get rds_conti_radar_object_list_msgs::SignalStatus :datatype-) "rds_conti_radar_object_list_msgs/SignalStatus")
(setf (get rds_conti_radar_object_list_msgs::SignalStatus :definition-)
      "#SensorMsgHeader SignalStatus field
uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0
uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1
uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2

uint8 SignalStatus
")



(provide :rds_conti_radar_object_list_msgs/SignalStatus "896b07484a13b3414e94543ebb8cffac")


