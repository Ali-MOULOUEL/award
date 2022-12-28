; Auto-generated. Do not edit!


(cl:in-package rds_msgs-msg)


;//! \htmlinclude command_car.msg.html

(cl:defclass <command_car> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (front_steering
    :reader front_steering
    :initarg :front_steering
    :type cl:float
    :initform 0.0)
   (rear_steering
    :reader rear_steering
    :initarg :rear_steering
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (deceleration
    :reader deceleration
    :initarg :deceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass command_car (<command_car>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <command_car>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'command_car)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_msgs-msg:<command_car> is deprecated: use rds_msgs-msg:command_car instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <command_car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:header-val is deprecated.  Use rds_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <command_car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:speed-val is deprecated.  Use rds_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'front_steering-val :lambda-list '(m))
(cl:defmethod front_steering-val ((m <command_car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:front_steering-val is deprecated.  Use rds_msgs-msg:front_steering instead.")
  (front_steering m))

(cl:ensure-generic-function 'rear_steering-val :lambda-list '(m))
(cl:defmethod rear_steering-val ((m <command_car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:rear_steering-val is deprecated.  Use rds_msgs-msg:rear_steering instead.")
  (rear_steering m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <command_car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:acceleration-val is deprecated.  Use rds_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'deceleration-val :lambda-list '(m))
(cl:defmethod deceleration-val ((m <command_car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:deceleration-val is deprecated.  Use rds_msgs-msg:deceleration instead.")
  (deceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <command_car>) ostream)
  "Serializes a message object of type '<command_car>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <command_car>) istream)
  "Deserializes a message object of type '<command_car>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_steering) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_steering) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deceleration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<command_car>)))
  "Returns string type for a message object of type '<command_car>"
  "rds_msgs/command_car")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'command_car)))
  "Returns string type for a message object of type 'command_car"
  "rds_msgs/command_car")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<command_car>)))
  "Returns md5sum for a message object of type '<command_car>"
  "acc368c3bdfdfc6be58c8f9da8ae46ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'command_car)))
  "Returns md5sum for a message object of type 'command_car"
  "acc368c3bdfdfc6be58c8f9da8ae46ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<command_car>)))
  "Returns full string definition for message of type '<command_car>"
  (cl:format cl:nil "Header header~%float32 speed~%float32 front_steering~%float32 rear_steering~%float32 acceleration~%float32 deceleration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'command_car)))
  "Returns full string definition for message of type 'command_car"
  (cl:format cl:nil "Header header~%float32 speed~%float32 front_steering~%float32 rear_steering~%float32 acceleration~%float32 deceleration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <command_car>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <command_car>))
  "Converts a ROS message object to a list"
  (cl:list 'command_car
    (cl:cons ':header (header msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':front_steering (front_steering msg))
    (cl:cons ':rear_steering (rear_steering msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':deceleration (deceleration msg))
))
