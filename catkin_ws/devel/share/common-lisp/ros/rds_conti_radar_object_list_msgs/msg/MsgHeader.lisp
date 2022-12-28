; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude MsgHeader.msg.html

(cl:defclass <MsgHeader> (roslisp-msg-protocol:ros-message)
  ((Seq
    :reader Seq
    :initarg :Seq
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type rds_conti_radar_object_list_msgs-msg:Time
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:Time))
   (Timestamp_source
    :reader Timestamp_source
    :initarg :Timestamp_source
    :type rds_conti_radar_object_list_msgs-msg:TimeStampSource
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:TimeStampSource))
   (TimeStamp_sync_state
    :reader TimeStamp_sync_state
    :initarg :TimeStamp_sync_state
    :type rds_conti_radar_object_list_msgs-msg:TimeStampSyncState
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:TimeStampSyncState)))
)

(cl:defclass MsgHeader (<MsgHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<MsgHeader> is deprecated: use rds_conti_radar_object_list_msgs-msg:MsgHeader instead.")))

(cl:ensure-generic-function 'Seq-val :lambda-list '(m))
(cl:defmethod Seq-val ((m <MsgHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:Seq-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:Seq instead.")
  (Seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <MsgHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:stamp-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'Timestamp_source-val :lambda-list '(m))
(cl:defmethod Timestamp_source-val ((m <MsgHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:Timestamp_source-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:Timestamp_source instead.")
  (Timestamp_source m))

(cl:ensure-generic-function 'TimeStamp_sync_state-val :lambda-list '(m))
(cl:defmethod TimeStamp_sync_state-val ((m <MsgHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:TimeStamp_sync_state-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:TimeStamp_sync_state instead.")
  (TimeStamp_sync_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgHeader>) ostream)
  "Serializes a message object of type '<MsgHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Seq)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Timestamp_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'TimeStamp_sync_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgHeader>) istream)
  "Deserializes a message object of type '<MsgHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Seq)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Timestamp_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'TimeStamp_sync_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgHeader>)))
  "Returns string type for a message object of type '<MsgHeader>"
  "rds_conti_radar_object_list_msgs/MsgHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgHeader)))
  "Returns string type for a message object of type 'MsgHeader"
  "rds_conti_radar_object_list_msgs/MsgHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgHeader>)))
  "Returns md5sum for a message object of type '<MsgHeader>"
  "f65b5aa4f825d78a4a1dd55ce9d49881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgHeader)))
  "Returns md5sum for a message object of type 'MsgHeader"
  "f65b5aa4f825d78a4a1dd55ce9d49881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgHeader>)))
  "Returns full string definition for message of type '<MsgHeader>"
  (cl:format cl:nil "#MsgHeader fields~%uint32 Seq          #sequence ID: consecutively increasing ID~%Time stamp~%TimeStampSource Timestamp_source~%TimeStampSyncState TimeStamp_sync_state~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/Time~%#Time fields~%uint32 Sec~%uint32 Nsec ~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSource~%#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState~%#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgHeader)))
  "Returns full string definition for message of type 'MsgHeader"
  (cl:format cl:nil "#MsgHeader fields~%uint32 Seq          #sequence ID: consecutively increasing ID~%Time stamp~%TimeStampSource Timestamp_source~%TimeStampSyncState TimeStamp_sync_state~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/Time~%#Time fields~%uint32 Sec~%uint32 Nsec ~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSource~%#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState~%#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgHeader>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Timestamp_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'TimeStamp_sync_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgHeader
    (cl:cons ':Seq (Seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':Timestamp_source (Timestamp_source msg))
    (cl:cons ':TimeStamp_sync_state (TimeStamp_sync_state msg))
))
