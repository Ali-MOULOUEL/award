; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude SignalStatus.msg.html

(cl:defclass <SignalStatus> (roslisp-msg-protocol:ros-message)
  ((SignalStatus
    :reader SignalStatus
    :initarg :SignalStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SignalStatus (<SignalStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<SignalStatus> is deprecated: use rds_conti_radar_object_list_msgs-msg:SignalStatus instead.")))

(cl:ensure-generic-function 'SignalStatus-val :lambda-list '(m))
(cl:defmethod SignalStatus-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:SignalStatus-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:SignalStatus instead.")
  (SignalStatus m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SignalStatus>)))
    "Constants for message type '<SignalStatus>"
  '((:SIGNALSTATUS_EM_SIGSTATE_INIT . 0)
    (:SIGNALSTATUS_EM_SIGSTATE_OK . 1)
    (:SIGNALSTATUS_EM_SIGSTATE_INVALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SignalStatus)))
    "Constants for message type 'SignalStatus"
  '((:SIGNALSTATUS_EM_SIGSTATE_INIT . 0)
    (:SIGNALSTATUS_EM_SIGSTATE_OK . 1)
    (:SIGNALSTATUS_EM_SIGSTATE_INVALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalStatus>) ostream)
  "Serializes a message object of type '<SignalStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SignalStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalStatus>) istream)
  "Deserializes a message object of type '<SignalStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SignalStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalStatus>)))
  "Returns string type for a message object of type '<SignalStatus>"
  "rds_conti_radar_object_list_msgs/SignalStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalStatus)))
  "Returns string type for a message object of type 'SignalStatus"
  "rds_conti_radar_object_list_msgs/SignalStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalStatus>)))
  "Returns md5sum for a message object of type '<SignalStatus>"
  "896b07484a13b3414e94543ebb8cffac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalStatus)))
  "Returns md5sum for a message object of type 'SignalStatus"
  "896b07484a13b3414e94543ebb8cffac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalStatus>)))
  "Returns full string definition for message of type '<SignalStatus>"
  (cl:format cl:nil "#SensorMsgHeader SignalStatus field~%uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0~%uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1~%uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2~%~%uint8 SignalStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalStatus)))
  "Returns full string definition for message of type 'SignalStatus"
  (cl:format cl:nil "#SensorMsgHeader SignalStatus field~%uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0~%uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1~%uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2~%~%uint8 SignalStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalStatus
    (cl:cons ':SignalStatus (SignalStatus msg))
))
