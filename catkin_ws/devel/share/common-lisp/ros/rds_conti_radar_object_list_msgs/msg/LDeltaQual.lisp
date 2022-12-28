; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude LDeltaQual.msg.html

(cl:defclass <LDeltaQual> (roslisp-msg-protocol:ros-message)
  ((LDeltaQual
    :reader LDeltaQual
    :initarg :LDeltaQual
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LDeltaQual (<LDeltaQual>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LDeltaQual>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LDeltaQual)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<LDeltaQual> is deprecated: use rds_conti_radar_object_list_msgs-msg:LDeltaQual instead.")))

(cl:ensure-generic-function 'LDeltaQual-val :lambda-list '(m))
(cl:defmethod LDeltaQual-val ((m <LDeltaQual>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaQual-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaQual instead.")
  (LDeltaQual m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LDeltaQual>)))
    "Constants for message type '<LDeltaQual>"
  '((:LDELTAQUAL_ALL_INVALID . 0)
    (:LDELTAQUAL_LEFT_VALID . 1)
    (:LDELTAQUAL_MID_VALID . 2)
    (:LDELTAQUAL_LEFT_MID_VALID . 3)
    (:LDELTAQUAL_RIGHT_VALID . 4)
    (:LDELTAQUAL_RIGHT_LEFT_VALID . 5)
    (:LDELTAQUAL_RIGHT_MID_VALID . 6)
    (:LDELTAQUAL_ALL_VALID . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LDeltaQual)))
    "Constants for message type 'LDeltaQual"
  '((:LDELTAQUAL_ALL_INVALID . 0)
    (:LDELTAQUAL_LEFT_VALID . 1)
    (:LDELTAQUAL_MID_VALID . 2)
    (:LDELTAQUAL_LEFT_MID_VALID . 3)
    (:LDELTAQUAL_RIGHT_VALID . 4)
    (:LDELTAQUAL_RIGHT_LEFT_VALID . 5)
    (:LDELTAQUAL_RIGHT_MID_VALID . 6)
    (:LDELTAQUAL_ALL_VALID . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LDeltaQual>) ostream)
  "Serializes a message object of type '<LDeltaQual>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LDeltaQual)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LDeltaQual>) istream)
  "Deserializes a message object of type '<LDeltaQual>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LDeltaQual)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LDeltaQual>)))
  "Returns string type for a message object of type '<LDeltaQual>"
  "rds_conti_radar_object_list_msgs/LDeltaQual")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LDeltaQual)))
  "Returns string type for a message object of type 'LDeltaQual"
  "rds_conti_radar_object_list_msgs/LDeltaQual")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LDeltaQual>)))
  "Returns md5sum for a message object of type '<LDeltaQual>"
  "46a34ed6db73a66ffc285aa58260c6bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LDeltaQual)))
  "Returns md5sum for a message object of type 'LDeltaQual"
  "46a34ed6db73a66ffc285aa58260c6bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LDeltaQual>)))
  "Returns full string definition for message of type '<LDeltaQual>"
  (cl:format cl:nil "#RadarObject LDeltaQual field : Quality of OBB distances~%uint8 LDELTAQUAL_ALL_INVALID = 0~%uint8 LDELTAQUAL_LEFT_VALID =1~%uint8 LDELTAQUAL_MID_VALID = 2~%uint8 LDELTAQUAL_LEFT_MID_VALID = 3~%uint8 LDELTAQUAL_RIGHT_VALID = 4~%uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5~%uint8 LDELTAQUAL_RIGHT_MID_VALID = 6~%uint8 LDELTAQUAL_ALL_VALID = 7~%~%uint8 LDeltaQual~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LDeltaQual)))
  "Returns full string definition for message of type 'LDeltaQual"
  (cl:format cl:nil "#RadarObject LDeltaQual field : Quality of OBB distances~%uint8 LDELTAQUAL_ALL_INVALID = 0~%uint8 LDELTAQUAL_LEFT_VALID =1~%uint8 LDELTAQUAL_MID_VALID = 2~%uint8 LDELTAQUAL_LEFT_MID_VALID = 3~%uint8 LDELTAQUAL_RIGHT_VALID = 4~%uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5~%uint8 LDELTAQUAL_RIGHT_MID_VALID = 6~%uint8 LDELTAQUAL_ALL_VALID = 7~%~%uint8 LDeltaQual~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LDeltaQual>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LDeltaQual>))
  "Converts a ROS message object to a list"
  (cl:list 'LDeltaQual
    (cl:cons ':LDeltaQual (LDeltaQual msg))
))
