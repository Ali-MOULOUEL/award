; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude TimeStampSource.msg.html

(cl:defclass <TimeStampSource> (roslisp-msg-protocol:ros-message)
  ((TimeStampSource
    :reader TimeStampSource
    :initarg :TimeStampSource
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TimeStampSource (<TimeStampSource>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeStampSource>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeStampSource)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<TimeStampSource> is deprecated: use rds_conti_radar_object_list_msgs-msg:TimeStampSource instead.")))

(cl:ensure-generic-function 'TimeStampSource-val :lambda-list '(m))
(cl:defmethod TimeStampSource-val ((m <TimeStampSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:TimeStampSource-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:TimeStampSource instead.")
  (TimeStampSource m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TimeStampSource>)))
    "Constants for message type '<TimeStampSource>"
  '((:TIMESTAMPSOURCE_UNKNOWN_SOURCE . 0)
    (:TIMESTAMPSOURCE_SENSOR . 1)
    (:TIMESTAMPSOURCE_ALGO . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TimeStampSource)))
    "Constants for message type 'TimeStampSource"
  '((:TIMESTAMPSOURCE_UNKNOWN_SOURCE . 0)
    (:TIMESTAMPSOURCE_SENSOR . 1)
    (:TIMESTAMPSOURCE_ALGO . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeStampSource>) ostream)
  "Serializes a message object of type '<TimeStampSource>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TimeStampSource)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeStampSource>) istream)
  "Deserializes a message object of type '<TimeStampSource>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TimeStampSource)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeStampSource>)))
  "Returns string type for a message object of type '<TimeStampSource>"
  "rds_conti_radar_object_list_msgs/TimeStampSource")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeStampSource)))
  "Returns string type for a message object of type 'TimeStampSource"
  "rds_conti_radar_object_list_msgs/TimeStampSource")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeStampSource>)))
  "Returns md5sum for a message object of type '<TimeStampSource>"
  "2fb2d134001df6f67e0a8dc8c7ddc7e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeStampSource)))
  "Returns md5sum for a message object of type 'TimeStampSource"
  "2fb2d134001df6f67e0a8dc8c7ddc7e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeStampSource>)))
  "Returns full string definition for message of type '<TimeStampSource>"
  (cl:format cl:nil "#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeStampSource)))
  "Returns full string definition for message of type 'TimeStampSource"
  (cl:format cl:nil "#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeStampSource>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeStampSource>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeStampSource
    (cl:cons ':TimeStampSource (TimeStampSource msg))
))
