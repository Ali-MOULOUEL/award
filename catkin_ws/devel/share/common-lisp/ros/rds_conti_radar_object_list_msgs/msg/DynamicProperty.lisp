; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude DynamicProperty.msg.html

(cl:defclass <DynamicProperty> (roslisp-msg-protocol:ros-message)
  ((DynamicProperty
    :reader DynamicProperty
    :initarg :DynamicProperty
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DynamicProperty (<DynamicProperty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicProperty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicProperty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<DynamicProperty> is deprecated: use rds_conti_radar_object_list_msgs-msg:DynamicProperty instead.")))

(cl:ensure-generic-function 'DynamicProperty-val :lambda-list '(m))
(cl:defmethod DynamicProperty-val ((m <DynamicProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:DynamicProperty-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:DynamicProperty instead.")
  (DynamicProperty m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DynamicProperty>)))
    "Constants for message type '<DynamicProperty>"
  '((:DYNAMICPROPERTY_MOVING . 0)
    (:DYNAMICPROPERTY_STATIONARY . 1)
    (:DYNAMICPROPERTY_ONCOMING . 2)
    (:DYNAMICPROPERTY_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DynamicProperty)))
    "Constants for message type 'DynamicProperty"
  '((:DYNAMICPROPERTY_MOVING . 0)
    (:DYNAMICPROPERTY_STATIONARY . 1)
    (:DYNAMICPROPERTY_ONCOMING . 2)
    (:DYNAMICPROPERTY_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicProperty>) ostream)
  "Serializes a message object of type '<DynamicProperty>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DynamicProperty)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicProperty>) istream)
  "Deserializes a message object of type '<DynamicProperty>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DynamicProperty)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicProperty>)))
  "Returns string type for a message object of type '<DynamicProperty>"
  "rds_conti_radar_object_list_msgs/DynamicProperty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicProperty)))
  "Returns string type for a message object of type 'DynamicProperty"
  "rds_conti_radar_object_list_msgs/DynamicProperty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicProperty>)))
  "Returns md5sum for a message object of type '<DynamicProperty>"
  "85d5c392a5c41a0edefab8879d7f3fbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicProperty)))
  "Returns md5sum for a message object of type 'DynamicProperty"
  "85d5c392a5c41a0edefab8879d7f3fbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicProperty>)))
  "Returns full string definition for message of type '<DynamicProperty>"
  (cl:format cl:nil "#RadarObject DynamicProperty field~%uint8 DYNAMICPROPERTY_MOVING = 0~%uint8 DYNAMICPROPERTY_STATIONARY = 1~%uint8 DYNAMICPROPERTY_ONCOMING = 2~%uint8 DYNAMICPROPERTY_UNKNOWN = 3~%~%uint8 DynamicProperty~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicProperty)))
  "Returns full string definition for message of type 'DynamicProperty"
  (cl:format cl:nil "#RadarObject DynamicProperty field~%uint8 DYNAMICPROPERTY_MOVING = 0~%uint8 DYNAMICPROPERTY_STATIONARY = 1~%uint8 DYNAMICPROPERTY_ONCOMING = 2~%uint8 DYNAMICPROPERTY_UNKNOWN = 3~%~%uint8 DynamicProperty~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicProperty>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicProperty>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicProperty
    (cl:cons ':DynamicProperty (DynamicProperty msg))
))
