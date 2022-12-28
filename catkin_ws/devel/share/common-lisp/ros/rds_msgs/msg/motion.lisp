; Auto-generated. Do not edit!


(cl:in-package rds_msgs-msg)


;//! \htmlinclude motion.msg.html

(cl:defclass <motion> (roslisp-msg-protocol:ros-message)
  ((motion
    :reader motion
    :initarg :motion
    :type cl:fixnum
    :initform 0))
)

(cl:defclass motion (<motion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_msgs-msg:<motion> is deprecated: use rds_msgs-msg:motion instead.")))

(cl:ensure-generic-function 'motion-val :lambda-list '(m))
(cl:defmethod motion-val ((m <motion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:motion-val is deprecated.  Use rds_msgs-msg:motion instead.")
  (motion m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<motion>)))
    "Constants for message type '<motion>"
  '((:MOTION_UNKNOWN . 0)
    (:MOTION_MOVING . 1)
    (:MOTION_NULL_SPEED . 2)
    (:MOTION_PARKED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'motion)))
    "Constants for message type 'motion"
  '((:MOTION_UNKNOWN . 0)
    (:MOTION_MOVING . 1)
    (:MOTION_NULL_SPEED . 2)
    (:MOTION_PARKED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motion>) ostream)
  "Serializes a message object of type '<motion>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motion>) istream)
  "Deserializes a message object of type '<motion>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motion>)))
  "Returns string type for a message object of type '<motion>"
  "rds_msgs/motion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motion)))
  "Returns string type for a message object of type 'motion"
  "rds_msgs/motion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motion>)))
  "Returns md5sum for a message object of type '<motion>"
  "b51040594c3742731f9d75a1c817e1f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motion)))
  "Returns md5sum for a message object of type 'motion"
  "b51040594c3742731f9d75a1c817e1f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motion>)))
  "Returns full string definition for message of type '<motion>"
  (cl:format cl:nil "# Motion type~%uint8 MOTION_UNKNOWN = 0~%uint8 MOTION_MOVING = 1~%uint8 MOTION_NULL_SPEED = 2~%uint8 MOTION_PARKED = 3~%~%uint8 motion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motion)))
  "Returns full string definition for message of type 'motion"
  (cl:format cl:nil "# Motion type~%uint8 MOTION_UNKNOWN = 0~%uint8 MOTION_MOVING = 1~%uint8 MOTION_NULL_SPEED = 2~%uint8 MOTION_PARKED = 3~%~%uint8 motion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motion>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motion>))
  "Converts a ROS message object to a list"
  (cl:list 'motion
    (cl:cons ':motion (motion msg))
))
