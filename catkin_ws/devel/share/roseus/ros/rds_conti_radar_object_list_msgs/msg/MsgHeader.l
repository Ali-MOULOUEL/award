;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::MsgHeader)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'MsgHeader (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::MSGHEADER")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::MSGHEADER"))

(in-package "ROS")
;;//! \htmlinclude MsgHeader.msg.html


(defclass rds_conti_radar_object_list_msgs::MsgHeader
  :super ros::object
  :slots (_Seq _stamp _Timestamp_source _TimeStamp_sync_state ))

(defmethod rds_conti_radar_object_list_msgs::MsgHeader
  (:init
   (&key
    ((:Seq __Seq) 0)
    ((:stamp __stamp) (instance rds_conti_radar_object_list_msgs::Time :init))
    ((:Timestamp_source __Timestamp_source) (instance rds_conti_radar_object_list_msgs::TimeStampSource :init))
    ((:TimeStamp_sync_state __TimeStamp_sync_state) (instance rds_conti_radar_object_list_msgs::TimeStampSyncState :init))
    )
   (send-super :init)
   (setq _Seq (round __Seq))
   (setq _stamp __stamp)
   (setq _Timestamp_source __Timestamp_source)
   (setq _TimeStamp_sync_state __TimeStamp_sync_state)
   self)
  (:Seq
   (&optional __Seq)
   (if __Seq (setq _Seq __Seq)) _Seq)
  (:stamp
   (&rest __stamp)
   (if (keywordp (car __stamp))
       (send* _stamp __stamp)
     (progn
       (if __stamp (setq _stamp (car __stamp)))
       _stamp)))
  (:Timestamp_source
   (&rest __Timestamp_source)
   (if (keywordp (car __Timestamp_source))
       (send* _Timestamp_source __Timestamp_source)
     (progn
       (if __Timestamp_source (setq _Timestamp_source (car __Timestamp_source)))
       _Timestamp_source)))
  (:TimeStamp_sync_state
   (&rest __TimeStamp_sync_state)
   (if (keywordp (car __TimeStamp_sync_state))
       (send* _TimeStamp_sync_state __TimeStamp_sync_state)
     (progn
       (if __TimeStamp_sync_state (setq _TimeStamp_sync_state (car __TimeStamp_sync_state)))
       _TimeStamp_sync_state)))
  (:serialization-length
   ()
   (+
    ;; uint32 _Seq
    4
    ;; rds_conti_radar_object_list_msgs/Time _stamp
    (send _stamp :serialization-length)
    ;; rds_conti_radar_object_list_msgs/TimeStampSource _Timestamp_source
    (send _Timestamp_source :serialization-length)
    ;; rds_conti_radar_object_list_msgs/TimeStampSyncState _TimeStamp_sync_state
    (send _TimeStamp_sync_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _Seq
       (write-long _Seq s)
     ;; rds_conti_radar_object_list_msgs/Time _stamp
       (send _stamp :serialize s)
     ;; rds_conti_radar_object_list_msgs/TimeStampSource _Timestamp_source
       (send _Timestamp_source :serialize s)
     ;; rds_conti_radar_object_list_msgs/TimeStampSyncState _TimeStamp_sync_state
       (send _TimeStamp_sync_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _Seq
     (setq _Seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rds_conti_radar_object_list_msgs/Time _stamp
     (send _stamp :deserialize buf ptr-) (incf ptr- (send _stamp :serialization-length))
   ;; rds_conti_radar_object_list_msgs/TimeStampSource _Timestamp_source
     (send _Timestamp_source :deserialize buf ptr-) (incf ptr- (send _Timestamp_source :serialization-length))
   ;; rds_conti_radar_object_list_msgs/TimeStampSyncState _TimeStamp_sync_state
     (send _TimeStamp_sync_state :deserialize buf ptr-) (incf ptr- (send _TimeStamp_sync_state :serialization-length))
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::MsgHeader :md5sum-) "f65b5aa4f825d78a4a1dd55ce9d49881")
(setf (get rds_conti_radar_object_list_msgs::MsgHeader :datatype-) "rds_conti_radar_object_list_msgs/MsgHeader")
(setf (get rds_conti_radar_object_list_msgs::MsgHeader :definition-)
      "#MsgHeader fields
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

")



(provide :rds_conti_radar_object_list_msgs/MsgHeader "f65b5aa4f825d78a4a1dd55ce9d49881")


