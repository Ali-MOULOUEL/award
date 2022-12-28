; Auto-generated. Do not edit!


(cl:in-package rds_anticollision-msg)


;//! \htmlinclude emergency_stop_root_cause.msg.html

(cl:defclass <emergency_stop_root_cause> (roslisp-msg-protocol:ros-message)
  ((causes
    :reader causes
    :initarg :causes
    :type (cl:vector rds_anticollision-msg:error)
   :initform (cl:make-array 0 :element-type 'rds_anticollision-msg:error :initial-element (cl:make-instance 'rds_anticollision-msg:error)))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass emergency_stop_root_cause (<emergency_stop_root_cause>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <emergency_stop_root_cause>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'emergency_stop_root_cause)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_anticollision-msg:<emergency_stop_root_cause> is deprecated: use rds_anticollision-msg:emergency_stop_root_cause instead.")))

(cl:ensure-generic-function 'causes-val :lambda-list '(m))
(cl:defmethod causes-val ((m <emergency_stop_root_cause>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:causes-val is deprecated.  Use rds_anticollision-msg:causes instead.")
  (causes m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <emergency_stop_root_cause>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:speed-val is deprecated.  Use rds_anticollision-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <emergency_stop_root_cause>) ostream)
  "Serializes a message object of type '<emergency_stop_root_cause>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'causes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'causes))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <emergency_stop_root_cause>) istream)
  "Deserializes a message object of type '<emergency_stop_root_cause>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'causes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'causes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rds_anticollision-msg:error))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<emergency_stop_root_cause>)))
  "Returns string type for a message object of type '<emergency_stop_root_cause>"
  "rds_anticollision/emergency_stop_root_cause")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'emergency_stop_root_cause)))
  "Returns string type for a message object of type 'emergency_stop_root_cause"
  "rds_anticollision/emergency_stop_root_cause")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<emergency_stop_root_cause>)))
  "Returns md5sum for a message object of type '<emergency_stop_root_cause>"
  "d411f9af8dac62ba702700d1fd92b8e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'emergency_stop_root_cause)))
  "Returns md5sum for a message object of type 'emergency_stop_root_cause"
  "d411f9af8dac62ba702700d1fd92b8e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<emergency_stop_root_cause>)))
  "Returns full string definition for message of type '<emergency_stop_root_cause>"
  (cl:format cl:nil "error[] causes~%~%# Vehicle Context when fired~%float32 speed~%~%================================================================================~%MSG: rds_anticollision/error~%# Generic error~%# Value field equals 0 means no error (whatever category is set to)~%uint32 category~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'emergency_stop_root_cause)))
  "Returns full string definition for message of type 'emergency_stop_root_cause"
  (cl:format cl:nil "error[] causes~%~%# Vehicle Context when fired~%float32 speed~%~%================================================================================~%MSG: rds_anticollision/error~%# Generic error~%# Value field equals 0 means no error (whatever category is set to)~%uint32 category~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <emergency_stop_root_cause>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'causes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <emergency_stop_root_cause>))
  "Converts a ROS message object to a list"
  (cl:list 'emergency_stop_root_cause
    (cl:cons ':causes (causes msg))
    (cl:cons ':speed (speed msg))
))
