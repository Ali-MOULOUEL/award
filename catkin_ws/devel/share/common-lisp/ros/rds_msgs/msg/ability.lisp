; Auto-generated. Do not edit!


(cl:in-package rds_msgs-msg)


;//! \htmlinclude ability.msg.html

(cl:defclass <ability> (roslisp-msg-protocol:ros-message)
  ((ability
    :reader ability
    :initarg :ability
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ability (<ability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_msgs-msg:<ability> is deprecated: use rds_msgs-msg:ability instead.")))

(cl:ensure-generic-function 'ability-val :lambda-list '(m))
(cl:defmethod ability-val ((m <ability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:ability-val is deprecated.  Use rds_msgs-msg:ability instead.")
  (ability m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ability>)))
    "Constants for message type '<ability>"
  '((:ABILITY_NOT_APPLICABLE . -1)
    (:ABILITY_NOT_AVAILABLE . 0)
    (:ABILITY_TRUE . 1)
    (:ABILITY_FALSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ability)))
    "Constants for message type 'ability"
  '((:ABILITY_NOT_APPLICABLE . -1)
    (:ABILITY_NOT_AVAILABLE . 0)
    (:ABILITY_TRUE . 1)
    (:ABILITY_FALSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ability>) ostream)
  "Serializes a message object of type '<ability>"
  (cl:let* ((signed (cl:slot-value msg 'ability)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ability>) istream)
  "Deserializes a message object of type '<ability>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ability) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ability>)))
  "Returns string type for a message object of type '<ability>"
  "rds_msgs/ability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ability)))
  "Returns string type for a message object of type 'ability"
  "rds_msgs/ability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ability>)))
  "Returns md5sum for a message object of type '<ability>"
  "6a11a918a995a6a669d08889ae70ed8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ability)))
  "Returns md5sum for a message object of type 'ability"
  "6a11a918a995a6a669d08889ae70ed8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ability>)))
  "Returns full string definition for message of type '<ability>"
  (cl:format cl:nil "int8 ABILITY_NOT_APPLICABLE = -1~%int8 ABILITY_NOT_AVAILABLE = 0 ~%int8 ABILITY_TRUE = 1~%int8 ABILITY_FALSE = 2~%~%int8 ability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ability)))
  "Returns full string definition for message of type 'ability"
  (cl:format cl:nil "int8 ABILITY_NOT_APPLICABLE = -1~%int8 ABILITY_NOT_AVAILABLE = 0 ~%int8 ABILITY_TRUE = 1~%int8 ABILITY_FALSE = 2~%~%int8 ability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ability>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ability>))
  "Converts a ROS message object to a list"
  (cl:list 'ability
    (cl:cons ':ability (ability msg))
))
