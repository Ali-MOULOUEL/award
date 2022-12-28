; Auto-generated. Do not edit!


(cl:in-package rds_anticollision-msg)


;//! \htmlinclude drive_mode.msg.html

(cl:defclass <drive_mode> (roslisp-msg-protocol:ros-message)
  ((drive_mode
    :reader drive_mode
    :initarg :drive_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass drive_mode (<drive_mode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drive_mode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drive_mode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_anticollision-msg:<drive_mode> is deprecated: use rds_anticollision-msg:drive_mode instead.")))

(cl:ensure-generic-function 'drive_mode-val :lambda-list '(m))
(cl:defmethod drive_mode-val ((m <drive_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:drive_mode-val is deprecated.  Use rds_anticollision-msg:drive_mode instead.")
  (drive_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<drive_mode>)))
    "Constants for message type '<drive_mode>"
  '((:DRIVE_MODE_MANUAL . 0)
    (:DRIVE_MODE_AUTOMATIC . 1)
    (:DRIVE_MODE_TELEOPERATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'drive_mode)))
    "Constants for message type 'drive_mode"
  '((:DRIVE_MODE_MANUAL . 0)
    (:DRIVE_MODE_AUTOMATIC . 1)
    (:DRIVE_MODE_TELEOPERATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drive_mode>) ostream)
  "Serializes a message object of type '<drive_mode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drive_mode>) istream)
  "Deserializes a message object of type '<drive_mode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drive_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drive_mode>)))
  "Returns string type for a message object of type '<drive_mode>"
  "rds_anticollision/drive_mode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drive_mode)))
  "Returns string type for a message object of type 'drive_mode"
  "rds_anticollision/drive_mode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drive_mode>)))
  "Returns md5sum for a message object of type '<drive_mode>"
  "44ef9e5eb7a21f58b8d93028b36ad4e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drive_mode)))
  "Returns md5sum for a message object of type 'drive_mode"
  "44ef9e5eb7a21f58b8d93028b36ad4e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drive_mode>)))
  "Returns full string definition for message of type '<drive_mode>"
  (cl:format cl:nil "uint8 DRIVE_MODE_MANUAL = 0 ~%uint8 DRIVE_MODE_AUTOMATIC = 1~%uint8 DRIVE_MODE_TELEOPERATION = 2~%~%uint8 drive_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drive_mode)))
  "Returns full string definition for message of type 'drive_mode"
  (cl:format cl:nil "uint8 DRIVE_MODE_MANUAL = 0 ~%uint8 DRIVE_MODE_AUTOMATIC = 1~%uint8 DRIVE_MODE_TELEOPERATION = 2~%~%uint8 drive_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drive_mode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drive_mode>))
  "Converts a ROS message object to a list"
  (cl:list 'drive_mode
    (cl:cons ':drive_mode (drive_mode msg))
))
