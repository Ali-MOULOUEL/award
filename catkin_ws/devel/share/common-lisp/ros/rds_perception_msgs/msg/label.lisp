; Auto-generated. Do not edit!


(cl:in-package rds_perception_msgs-msg)


;//! \htmlinclude label.msg.html

(cl:defclass <label> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:fixnum
    :initform 0))
)

(cl:defclass label (<label>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <label>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'label)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_perception_msgs-msg:<label> is deprecated: use rds_perception_msgs-msg:label instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <label>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:label-val is deprecated.  Use rds_perception_msgs-msg:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<label>)))
    "Constants for message type '<label>"
  '((:LABEL_INVALID . 0)
    (:LABEL_UNKNOWN . 1)
    (:LABEL_CAR . 2)
    (:LABEL_PEDESTRIAN . 3)
    (:LABEL_BIKE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'label)))
    "Constants for message type 'label"
  '((:LABEL_INVALID . 0)
    (:LABEL_UNKNOWN . 1)
    (:LABEL_CAR . 2)
    (:LABEL_PEDESTRIAN . 3)
    (:LABEL_BIKE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <label>) ostream)
  "Serializes a message object of type '<label>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'label)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <label>) istream)
  "Deserializes a message object of type '<label>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'label)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<label>)))
  "Returns string type for a message object of type '<label>"
  "rds_perception_msgs/label")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'label)))
  "Returns string type for a message object of type 'label"
  "rds_perception_msgs/label")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<label>)))
  "Returns md5sum for a message object of type '<label>"
  "c06ea1895dbf2fba71ea775848eb312a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'label)))
  "Returns md5sum for a message object of type 'label"
  "c06ea1895dbf2fba71ea775848eb312a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<label>)))
  "Returns full string definition for message of type '<label>"
  (cl:format cl:nil "# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'label)))
  "Returns full string definition for message of type 'label"
  (cl:format cl:nil "# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <label>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <label>))
  "Converts a ROS message object to a list"
  (cl:list 'label
    (cl:cons ':label (label msg))
))
