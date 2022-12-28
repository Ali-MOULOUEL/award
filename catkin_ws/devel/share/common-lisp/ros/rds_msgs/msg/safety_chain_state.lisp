; Auto-generated. Do not edit!


(cl:in-package rds_msgs-msg)


;//! \htmlinclude safety_chain_state.msg.html

(cl:defclass <safety_chain_state> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass safety_chain_state (<safety_chain_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <safety_chain_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'safety_chain_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_msgs-msg:<safety_chain_state> is deprecated: use rds_msgs-msg:safety_chain_state instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <safety_chain_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:state-val is deprecated.  Use rds_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<safety_chain_state>)))
    "Constants for message type '<safety_chain_state>"
  '((:STATE_ACTIVE . 0)
    (:STATE_DISABLED . 1)
    (:STATE_FAILSOFT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'safety_chain_state)))
    "Constants for message type 'safety_chain_state"
  '((:STATE_ACTIVE . 0)
    (:STATE_DISABLED . 1)
    (:STATE_FAILSOFT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <safety_chain_state>) ostream)
  "Serializes a message object of type '<safety_chain_state>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <safety_chain_state>) istream)
  "Deserializes a message object of type '<safety_chain_state>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<safety_chain_state>)))
  "Returns string type for a message object of type '<safety_chain_state>"
  "rds_msgs/safety_chain_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'safety_chain_state)))
  "Returns string type for a message object of type 'safety_chain_state"
  "rds_msgs/safety_chain_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<safety_chain_state>)))
  "Returns md5sum for a message object of type '<safety_chain_state>"
  "4c854c67ecd4d86925912568f00ec3d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'safety_chain_state)))
  "Returns md5sum for a message object of type 'safety_chain_state"
  "4c854c67ecd4d86925912568f00ec3d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<safety_chain_state>)))
  "Returns full string definition for message of type '<safety_chain_state>"
  (cl:format cl:nil "uint8 STATE_ACTIVE = 0~%uint8 STATE_DISABLED = 1~%uint8 STATE_FAILSOFT = 2~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'safety_chain_state)))
  "Returns full string definition for message of type 'safety_chain_state"
  (cl:format cl:nil "uint8 STATE_ACTIVE = 0~%uint8 STATE_DISABLED = 1~%uint8 STATE_FAILSOFT = 2~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <safety_chain_state>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <safety_chain_state>))
  "Converts a ROS message object to a list"
  (cl:list 'safety_chain_state
    (cl:cons ':state (state msg))
))
