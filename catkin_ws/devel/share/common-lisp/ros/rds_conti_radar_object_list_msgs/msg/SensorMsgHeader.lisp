; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude SensorMsgHeader.msg.html

(cl:defclass <SensorMsgHeader> (roslisp-msg-protocol:ros-message)
  ((CommonHeader
    :reader CommonHeader
    :initarg :CommonHeader
    :type rds_conti_radar_object_list_msgs-msg:MsgHeader
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:MsgHeader))
   (SensorId
    :reader SensorId
    :initarg :SensorId
    :type cl:integer
    :initform 0)
   (SignalStatus
    :reader SignalStatus
    :initarg :SignalStatus
    :type rds_conti_radar_object_list_msgs-msg:SignalStatus
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:SignalStatus)))
)

(cl:defclass SensorMsgHeader (<SensorMsgHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorMsgHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorMsgHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<SensorMsgHeader> is deprecated: use rds_conti_radar_object_list_msgs-msg:SensorMsgHeader instead.")))

(cl:ensure-generic-function 'CommonHeader-val :lambda-list '(m))
(cl:defmethod CommonHeader-val ((m <SensorMsgHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:CommonHeader-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:CommonHeader instead.")
  (CommonHeader m))

(cl:ensure-generic-function 'SensorId-val :lambda-list '(m))
(cl:defmethod SensorId-val ((m <SensorMsgHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:SensorId-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:SensorId instead.")
  (SensorId m))

(cl:ensure-generic-function 'SignalStatus-val :lambda-list '(m))
(cl:defmethod SignalStatus-val ((m <SensorMsgHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:SignalStatus-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:SignalStatus instead.")
  (SignalStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorMsgHeader>) ostream)
  "Serializes a message object of type '<SensorMsgHeader>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'CommonHeader) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensorId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SensorId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SensorId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SensorId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'SignalStatus) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorMsgHeader>) istream)
  "Deserializes a message object of type '<SensorMsgHeader>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'CommonHeader) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensorId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SensorId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SensorId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SensorId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'SignalStatus) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorMsgHeader>)))
  "Returns string type for a message object of type '<SensorMsgHeader>"
  "rds_conti_radar_object_list_msgs/SensorMsgHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorMsgHeader)))
  "Returns string type for a message object of type 'SensorMsgHeader"
  "rds_conti_radar_object_list_msgs/SensorMsgHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorMsgHeader>)))
  "Returns md5sum for a message object of type '<SensorMsgHeader>"
  "c61f492b9657164b862e05bce5436fda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorMsgHeader)))
  "Returns md5sum for a message object of type 'SensorMsgHeader"
  "c61f492b9657164b862e05bce5436fda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorMsgHeader>)))
  "Returns full string definition for message of type '<SensorMsgHeader>"
  (cl:format cl:nil "#SensorMsgHeader fields~%MsgHeader CommonHeader~%uint32 SensorId             #sensor ID~%SignalStatus SignalStatus   #status of the signals in the data packet~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/MsgHeader~%#MsgHeader fields~%uint32 Seq          #sequence ID: consecutively increasing ID~%Time stamp~%TimeStampSource Timestamp_source~%TimeStampSyncState TimeStamp_sync_state~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/Time~%#Time fields~%uint32 Sec~%uint32 Nsec ~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSource~%#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState~%#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/SignalStatus~%#SensorMsgHeader SignalStatus field~%uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0~%uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1~%uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2~%~%uint8 SignalStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorMsgHeader)))
  "Returns full string definition for message of type 'SensorMsgHeader"
  (cl:format cl:nil "#SensorMsgHeader fields~%MsgHeader CommonHeader~%uint32 SensorId             #sensor ID~%SignalStatus SignalStatus   #status of the signals in the data packet~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/MsgHeader~%#MsgHeader fields~%uint32 Seq          #sequence ID: consecutively increasing ID~%Time stamp~%TimeStampSource Timestamp_source~%TimeStampSyncState TimeStamp_sync_state~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/Time~%#Time fields~%uint32 Sec~%uint32 Nsec ~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSource~%#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState~%#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/SignalStatus~%#SensorMsgHeader SignalStatus field~%uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0~%uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1~%uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2~%~%uint8 SignalStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorMsgHeader>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'CommonHeader))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'SignalStatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorMsgHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorMsgHeader
    (cl:cons ':CommonHeader (CommonHeader msg))
    (cl:cons ':SensorId (SensorId msg))
    (cl:cons ':SignalStatus (SignalStatus msg))
))
