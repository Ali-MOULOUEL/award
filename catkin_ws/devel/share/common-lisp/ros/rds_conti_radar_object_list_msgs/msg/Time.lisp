; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude Time.msg.html

(cl:defclass <Time> (roslisp-msg-protocol:ros-message)
  ((Sec
    :reader Sec
    :initarg :Sec
    :type cl:integer
    :initform 0)
   (Nsec
    :reader Nsec
    :initarg :Nsec
    :type cl:integer
    :initform 0))
)

(cl:defclass Time (<Time>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<Time> is deprecated: use rds_conti_radar_object_list_msgs-msg:Time instead.")))

(cl:ensure-generic-function 'Sec-val :lambda-list '(m))
(cl:defmethod Sec-val ((m <Time>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:Sec-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:Sec instead.")
  (Sec m))

(cl:ensure-generic-function 'Nsec-val :lambda-list '(m))
(cl:defmethod Nsec-val ((m <Time>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:Nsec-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:Nsec instead.")
  (Nsec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time>) ostream)
  "Serializes a message object of type '<Time>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Nsec)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time>) istream)
  "Deserializes a message object of type '<Time>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Nsec)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time>)))
  "Returns string type for a message object of type '<Time>"
  "rds_conti_radar_object_list_msgs/Time")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time)))
  "Returns string type for a message object of type 'Time"
  "rds_conti_radar_object_list_msgs/Time")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time>)))
  "Returns md5sum for a message object of type '<Time>"
  "d25eef3a4dddf6c83752b23dcacfd7aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time)))
  "Returns md5sum for a message object of type 'Time"
  "d25eef3a4dddf6c83752b23dcacfd7aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time>)))
  "Returns full string definition for message of type '<Time>"
  (cl:format cl:nil "#Time fields~%uint32 Sec~%uint32 Nsec ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time)))
  "Returns full string definition for message of type 'Time"
  (cl:format cl:nil "#Time fields~%uint32 Sec~%uint32 Nsec ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time>))
  "Converts a ROS message object to a list"
  (cl:list 'Time
    (cl:cons ':Sec (Sec msg))
    (cl:cons ':Nsec (Nsec msg))
))
