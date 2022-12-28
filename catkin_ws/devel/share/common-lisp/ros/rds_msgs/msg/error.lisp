; Auto-generated. Do not edit!


(cl:in-package rds_msgs-msg)


;//! \htmlinclude error.msg.html

(cl:defclass <error> (roslisp-msg-protocol:ros-message)
  ((category
    :reader category
    :initarg :category
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass error (<error>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <error>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'error)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_msgs-msg:<error> is deprecated: use rds_msgs-msg:error instead.")))

(cl:ensure-generic-function 'category-val :lambda-list '(m))
(cl:defmethod category-val ((m <error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:category-val is deprecated.  Use rds_msgs-msg:category instead.")
  (category m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:value-val is deprecated.  Use rds_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <error>) ostream)
  "Serializes a message object of type '<error>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'category)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'category)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'category)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'category)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <error>) istream)
  "Deserializes a message object of type '<error>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'category)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'category)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'category)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'category)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<error>)))
  "Returns string type for a message object of type '<error>"
  "rds_msgs/error")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'error)))
  "Returns string type for a message object of type 'error"
  "rds_msgs/error")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<error>)))
  "Returns md5sum for a message object of type '<error>"
  "68f1abf75ea05c1c908b73319245e161")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'error)))
  "Returns md5sum for a message object of type 'error"
  "68f1abf75ea05c1c908b73319245e161")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<error>)))
  "Returns full string definition for message of type '<error>"
  (cl:format cl:nil "# Generic error~%# Value field equals 0 means no error (whatever category is set to)~%uint32 category~%int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'error)))
  "Returns full string definition for message of type 'error"
  (cl:format cl:nil "# Generic error~%# Value field equals 0 means no error (whatever category is set to)~%uint32 category~%int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <error>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <error>))
  "Converts a ROS message object to a list"
  (cl:list 'error
    (cl:cons ':category (category msg))
    (cl:cons ':value (value msg))
))
