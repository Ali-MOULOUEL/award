; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude TimeStampSyncState.msg.html

(cl:defclass <TimeStampSyncState> (roslisp-msg-protocol:ros-message)
  ((TimeStampSyncState
    :reader TimeStampSyncState
    :initarg :TimeStampSyncState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TimeStampSyncState (<TimeStampSyncState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeStampSyncState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeStampSyncState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<TimeStampSyncState> is deprecated: use rds_conti_radar_object_list_msgs-msg:TimeStampSyncState instead.")))

(cl:ensure-generic-function 'TimeStampSyncState-val :lambda-list '(m))
(cl:defmethod TimeStampSyncState-val ((m <TimeStampSyncState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:TimeStampSyncState-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:TimeStampSyncState instead.")
  (TimeStampSyncState m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TimeStampSyncState>)))
    "Constants for message type '<TimeStampSyncState>"
  '((:TIMESTAMPSYNCSTATE_UNKNOWN_SYNC . 0)
    (:TIMESTAMPSYNCSTATE_NOT_SYNCED . 1)
    (:TIMESTAMPSYNCSTATE_SYNCED_GTC . 2)
    (:TIMESTAMPSYNCSTATE_SYNCED_PTP . 3)
    (:TIMESTAMPSYNCSTATE_SYNCED_REPLAY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TimeStampSyncState)))
    "Constants for message type 'TimeStampSyncState"
  '((:TIMESTAMPSYNCSTATE_UNKNOWN_SYNC . 0)
    (:TIMESTAMPSYNCSTATE_NOT_SYNCED . 1)
    (:TIMESTAMPSYNCSTATE_SYNCED_GTC . 2)
    (:TIMESTAMPSYNCSTATE_SYNCED_PTP . 3)
    (:TIMESTAMPSYNCSTATE_SYNCED_REPLAY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeStampSyncState>) ostream)
  "Serializes a message object of type '<TimeStampSyncState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TimeStampSyncState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeStampSyncState>) istream)
  "Deserializes a message object of type '<TimeStampSyncState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TimeStampSyncState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeStampSyncState>)))
  "Returns string type for a message object of type '<TimeStampSyncState>"
  "rds_conti_radar_object_list_msgs/TimeStampSyncState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeStampSyncState)))
  "Returns string type for a message object of type 'TimeStampSyncState"
  "rds_conti_radar_object_list_msgs/TimeStampSyncState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeStampSyncState>)))
  "Returns md5sum for a message object of type '<TimeStampSyncState>"
  "951c6e7c01586103049a126c68595609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeStampSyncState)))
  "Returns md5sum for a message object of type 'TimeStampSyncState"
  "951c6e7c01586103049a126c68595609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeStampSyncState>)))
  "Returns full string definition for message of type '<TimeStampSyncState>"
  (cl:format cl:nil "#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeStampSyncState)))
  "Returns full string definition for message of type 'TimeStampSyncState"
  (cl:format cl:nil "#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeStampSyncState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeStampSyncState>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeStampSyncState
    (cl:cons ':TimeStampSyncState (TimeStampSyncState msg))
))
