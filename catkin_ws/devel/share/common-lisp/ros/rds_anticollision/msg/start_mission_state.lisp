; Auto-generated. Do not edit!


(cl:in-package rds_anticollision-msg)


;//! \htmlinclude start_mission_state.msg.html

(cl:defclass <start_mission_state> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass start_mission_state (<start_mission_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_mission_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_mission_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_anticollision-msg:<start_mission_state> is deprecated: use rds_anticollision-msg:start_mission_state instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <start_mission_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:state-val is deprecated.  Use rds_anticollision-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<start_mission_state>)))
    "Constants for message type '<start_mission_state>"
  '((:STATE_NOT_SUPPORTED . 0)
    (:STATE_NOT_TRIGGERABLE . 1)
    (:STATE_TRIGGERABLE . 2)
    (:STATE_TRIGGERED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'start_mission_state)))
    "Constants for message type 'start_mission_state"
  '((:STATE_NOT_SUPPORTED . 0)
    (:STATE_NOT_TRIGGERABLE . 1)
    (:STATE_TRIGGERABLE . 2)
    (:STATE_TRIGGERED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_mission_state>) ostream)
  "Serializes a message object of type '<start_mission_state>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_mission_state>) istream)
  "Deserializes a message object of type '<start_mission_state>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_mission_state>)))
  "Returns string type for a message object of type '<start_mission_state>"
  "rds_anticollision/start_mission_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_mission_state)))
  "Returns string type for a message object of type 'start_mission_state"
  "rds_anticollision/start_mission_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_mission_state>)))
  "Returns md5sum for a message object of type '<start_mission_state>"
  "a82ad9077eb8e1a28927c3da9649ad09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_mission_state)))
  "Returns md5sum for a message object of type 'start_mission_state"
  "a82ad9077eb8e1a28927c3da9649ad09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_mission_state>)))
  "Returns full string definition for message of type '<start_mission_state>"
  (cl:format cl:nil "uint8 STATE_NOT_SUPPORTED = 0~%uint8 STATE_NOT_TRIGGERABLE = 1~%uint8 STATE_TRIGGERABLE = 2~%uint8 STATE_TRIGGERED = 3~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_mission_state)))
  "Returns full string definition for message of type 'start_mission_state"
  (cl:format cl:nil "uint8 STATE_NOT_SUPPORTED = 0~%uint8 STATE_NOT_TRIGGERABLE = 1~%uint8 STATE_TRIGGERABLE = 2~%uint8 STATE_TRIGGERED = 3~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_mission_state>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_mission_state>))
  "Converts a ROS message object to a list"
  (cl:list 'start_mission_state
    (cl:cons ':state (state msg))
))
