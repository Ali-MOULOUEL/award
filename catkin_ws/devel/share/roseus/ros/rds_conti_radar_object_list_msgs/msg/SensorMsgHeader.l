;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::SensorMsgHeader)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'SensorMsgHeader (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SENSORMSGHEADER")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::SENSORMSGHEADER"))

(in-package "ROS")
;;//! \htmlinclude SensorMsgHeader.msg.html


(defclass rds_conti_radar_object_list_msgs::SensorMsgHeader
  :super ros::object
  :slots (_CommonHeader _SensorId _SignalStatus ))

(defmethod rds_conti_radar_object_list_msgs::SensorMsgHeader
  (:init
   (&key
    ((:CommonHeader __CommonHeader) (instance rds_conti_radar_object_list_msgs::MsgHeader :init))
    ((:SensorId __SensorId) 0)
    ((:SignalStatus __SignalStatus) (instance rds_conti_radar_object_list_msgs::SignalStatus :init))
    )
   (send-super :init)
   (setq _CommonHeader __CommonHeader)
   (setq _SensorId (round __SensorId))
   (setq _SignalStatus __SignalStatus)
   self)
  (:CommonHeader
   (&rest __CommonHeader)
   (if (keywordp (car __CommonHeader))
       (send* _CommonHeader __CommonHeader)
     (progn
       (if __CommonHeader (setq _CommonHeader (car __CommonHeader)))
       _CommonHeader)))
  (:SensorId
   (&optional __SensorId)
   (if __SensorId (setq _SensorId __SensorId)) _SensorId)
  (:SignalStatus
   (&rest __SignalStatus)
   (if (keywordp (car __SignalStatus))
       (send* _SignalStatus __SignalStatus)
     (progn
       (if __SignalStatus (setq _SignalStatus (car __SignalStatus)))
       _SignalStatus)))
  (:serialization-length
   ()
   (+
    ;; rds_conti_radar_object_list_msgs/MsgHeader _CommonHeader
    (send _CommonHeader :serialization-length)
    ;; uint32 _SensorId
    4
    ;; rds_conti_radar_object_list_msgs/SignalStatus _SignalStatus
    (send _SignalStatus :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rds_conti_radar_object_list_msgs/MsgHeader _CommonHeader
       (send _CommonHeader :serialize s)
     ;; uint32 _SensorId
       (write-long _SensorId s)
     ;; rds_conti_radar_object_list_msgs/SignalStatus _SignalStatus
       (send _SignalStatus :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rds_conti_radar_object_list_msgs/MsgHeader _CommonHeader
     (send _CommonHeader :deserialize buf ptr-) (incf ptr- (send _CommonHeader :serialization-length))
   ;; uint32 _SensorId
     (setq _SensorId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rds_conti_radar_object_list_msgs/SignalStatus _SignalStatus
     (send _SignalStatus :deserialize buf ptr-) (incf ptr- (send _SignalStatus :serialization-length))
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::SensorMsgHeader :md5sum-) "c61f492b9657164b862e05bce5436fda")
(setf (get rds_conti_radar_object_list_msgs::SensorMsgHeader :datatype-) "rds_conti_radar_object_list_msgs/SensorMsgHeader")
(setf (get rds_conti_radar_object_list_msgs::SensorMsgHeader :definition-)
      "#SensorMsgHeader fields
MsgHeader CommonHeader
uint32 SensorId             #sensor ID
SignalStatus SignalStatus   #status of the signals in the data packet
================================================================================
MSG: rds_conti_radar_object_list_msgs/MsgHeader
#MsgHeader fields
uint32 Seq          #sequence ID: consecutively increasing ID
Time stamp
TimeStampSource Timestamp_source
TimeStampSyncState TimeStamp_sync_state

================================================================================
MSG: rds_conti_radar_object_list_msgs/Time
#Time fields
uint32 Sec
uint32 Nsec 

================================================================================
MSG: rds_conti_radar_object_list_msgs/TimeStampSource
#MsgHeader field TimeStampSource
uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all
uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor
uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo

uint8 TimeStampSource 
================================================================================
MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState
#MsgHeader field TimeStampSyncState
uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all
uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all
uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism

uint8 TimeStampSyncState

================================================================================
MSG: rds_conti_radar_object_list_msgs/SignalStatus
#SensorMsgHeader SignalStatus field
uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0
uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1
uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2

uint8 SignalStatus
")



(provide :rds_conti_radar_object_list_msgs/SensorMsgHeader "c61f492b9657164b862e05bce5436fda")


