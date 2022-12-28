; Auto-generated. Do not edit!


(cl:in-package rds_perception_msgs-msg)


;//! \htmlinclude extent.msg.html

(cl:defclass <extent> (roslisp-msg-protocol:ros-message)
  ((extent
    :reader extent
    :initarg :extent
    :type cl:fixnum
    :initform 0))
)

(cl:defclass extent (<extent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <extent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'extent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_perception_msgs-msg:<extent> is deprecated: use rds_perception_msgs-msg:extent instead.")))

(cl:ensure-generic-function 'extent-val :lambda-list '(m))
(cl:defmethod extent-val ((m <extent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:extent-val is deprecated.  Use rds_perception_msgs-msg:extent instead.")
  (extent m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<extent>)))
    "Constants for message type '<extent>"
  '((:EXTENT_ELLIPSE . 0)
    (:EXTENT_OBB . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'extent)))
    "Constants for message type 'extent"
  '((:EXTENT_ELLIPSE . 0)
    (:EXTENT_OBB . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <extent>) ostream)
  "Serializes a message object of type '<extent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extent)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <extent>) istream)
  "Deserializes a message object of type '<extent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extent)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<extent>)))
  "Returns string type for a message object of type '<extent>"
  "rds_perception_msgs/extent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'extent)))
  "Returns string type for a message object of type 'extent"
  "rds_perception_msgs/extent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<extent>)))
  "Returns md5sum for a message object of type '<extent>"
  "54d45419b8a9fa808fd73d0379c42304")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'extent)))
  "Returns md5sum for a message object of type 'extent"
  "54d45419b8a9fa808fd73d0379c42304")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<extent>)))
  "Returns full string definition for message of type '<extent>"
  (cl:format cl:nil "# Tracking extent type~%uint8 EXTENT_ELLIPSE = 0~%uint8 EXTENT_OBB = 1~%~%uint8 extent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'extent)))
  "Returns full string definition for message of type 'extent"
  (cl:format cl:nil "# Tracking extent type~%uint8 EXTENT_ELLIPSE = 0~%uint8 EXTENT_OBB = 1~%~%uint8 extent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <extent>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <extent>))
  "Converts a ROS message object to a list"
  (cl:list 'extent
    (cl:cons ':extent (extent msg))
))
