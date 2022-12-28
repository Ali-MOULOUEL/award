;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::TimeStampSyncState)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'TimeStampSyncState (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))

(in-package "ROS")
;;//! \htmlinclude TimeStampSyncState.msg.html


(intern "*TIMESTAMPSYNCSTATE_UNKNOWN_SYNC*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(shadow '*TIMESTAMPSYNCSTATE_UNKNOWN_SYNC* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_UNKNOWN_SYNC* 0)
(intern "*TIMESTAMPSYNCSTATE_NOT_SYNCED*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(shadow '*TIMESTAMPSYNCSTATE_NOT_SYNCED* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_NOT_SYNCED* 1)
(intern "*TIMESTAMPSYNCSTATE_SYNCED_GTC*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(shadow '*TIMESTAMPSYNCSTATE_SYNCED_GTC* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_SYNCED_GTC* 2)
(intern "*TIMESTAMPSYNCSTATE_SYNCED_PTP*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(shadow '*TIMESTAMPSYNCSTATE_SYNCED_PTP* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_SYNCED_PTP* 3)
(intern "*TIMESTAMPSYNCSTATE_SYNCED_REPLAY*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(shadow '*TIMESTAMPSYNCSTATE_SYNCED_REPLAY* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSYNCSTATE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_SYNCED_REPLAY* 4)

(defun rds_conti_radar_object_list_msgs::TimeStampSyncState-to-symbol (const)
  (cond
        ((= const 0) 'rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_UNKNOWN_SYNC*)
        ((= const 1) 'rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_NOT_SYNCED*)
        ((= const 2) 'rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_SYNCED_GTC*)
        ((= const 3) 'rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_SYNCED_PTP*)
        ((= const 4) 'rds_conti_radar_object_list_msgs::TimeStampSyncState::*TIMESTAMPSYNCSTATE_SYNCED_REPLAY*)
        (t nil)))

(defclass rds_conti_radar_object_list_msgs::TimeStampSyncState
  :super ros::object
  :slots (_TimeStampSyncState ))

(defmethod rds_conti_radar_object_list_msgs::TimeStampSyncState
  (:init
   (&key
    ((:TimeStampSyncState __TimeStampSyncState) 0)
    )
   (send-super :init)
   (setq _TimeStampSyncState (round __TimeStampSyncState))
   self)
  (:TimeStampSyncState
   (&optional __TimeStampSyncState)
   (if __TimeStampSyncState (setq _TimeStampSyncState __TimeStampSyncState)) _TimeStampSyncState)
  (:serialization-length
   ()
   (+
    ;; uint8 _TimeStampSyncState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _TimeStampSyncState
       (write-byte _TimeStampSyncState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _TimeStampSyncState
     (setq _TimeStampSyncState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::TimeStampSyncState :md5sum-) "951c6e7c01586103049a126c68595609")
(setf (get rds_conti_radar_object_list_msgs::TimeStampSyncState :datatype-) "rds_conti_radar_object_list_msgs/TimeStampSyncState")
(setf (get rds_conti_radar_object_list_msgs::TimeStampSyncState :definition-)
      "#MsgHeader field TimeStampSyncState
uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all
uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all
uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism

uint8 TimeStampSyncState

")



(provide :rds_conti_radar_object_list_msgs/TimeStampSyncState "951c6e7c01586103049a126c68595609")


