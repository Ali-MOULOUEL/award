; Auto-generated. Do not edit!


(cl:in-package rds_foresight_camera_object_list_msgs-msg)


;//! \htmlinclude BoundBox.msg.html

(cl:defclass <BoundBox> (roslisp-msg-protocol:ros-message)
  ((BottomRightX
    :reader BottomRightX
    :initarg :BottomRightX
    :type cl:float
    :initform 0.0)
   (BottomRightY
    :reader BottomRightY
    :initarg :BottomRightY
    :type cl:float
    :initform 0.0)
   (TopLeftX
    :reader TopLeftX
    :initarg :TopLeftX
    :type cl:float
    :initform 0.0)
   (TopLeftY
    :reader TopLeftY
    :initarg :TopLeftY
    :type cl:float
    :initform 0.0))
)

(cl:defclass BoundBox (<BoundBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_foresight_camera_object_list_msgs-msg:<BoundBox> is deprecated: use rds_foresight_camera_object_list_msgs-msg:BoundBox instead.")))

(cl:ensure-generic-function 'BottomRightX-val :lambda-list '(m))
(cl:defmethod BottomRightX-val ((m <BoundBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_foresight_camera_object_list_msgs-msg:BottomRightX-val is deprecated.  Use rds_foresight_camera_object_list_msgs-msg:BottomRightX instead.")
  (BottomRightX m))

(cl:ensure-generic-function 'BottomRightY-val :lambda-list '(m))
(cl:defmethod BottomRightY-val ((m <BoundBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_foresight_camera_object_list_msgs-msg:BottomRightY-val is deprecated.  Use rds_foresight_camera_object_list_msgs-msg:BottomRightY instead.")
  (BottomRightY m))

(cl:ensure-generic-function 'TopLeftX-val :lambda-list '(m))
(cl:defmethod TopLeftX-val ((m <BoundBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_foresight_camera_object_list_msgs-msg:TopLeftX-val is deprecated.  Use rds_foresight_camera_object_list_msgs-msg:TopLeftX instead.")
  (TopLeftX m))

(cl:ensure-generic-function 'TopLeftY-val :lambda-list '(m))
(cl:defmethod TopLeftY-val ((m <BoundBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_foresight_camera_object_list_msgs-msg:TopLeftY-val is deprecated.  Use rds_foresight_camera_object_list_msgs-msg:TopLeftY instead.")
  (TopLeftY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundBox>) ostream)
  "Serializes a message object of type '<BoundBox>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BottomRightX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BottomRightY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TopLeftX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TopLeftY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundBox>) istream)
  "Deserializes a message object of type '<BoundBox>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BottomRightX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BottomRightY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TopLeftX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TopLeftY) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundBox>)))
  "Returns string type for a message object of type '<BoundBox>"
  "rds_foresight_camera_object_list_msgs/BoundBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundBox)))
  "Returns string type for a message object of type 'BoundBox"
  "rds_foresight_camera_object_list_msgs/BoundBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundBox>)))
  "Returns md5sum for a message object of type '<BoundBox>"
  "d17ab06cbfb1e620b89068c14f0e9d84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundBox)))
  "Returns md5sum for a message object of type 'BoundBox"
  "d17ab06cbfb1e620b89068c14f0e9d84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundBox>)))
  "Returns full string definition for message of type '<BoundBox>"
  (cl:format cl:nil "#BoundBox field~%float32 BottomRightX~%float32 BottomRightY~%float32 TopLeftX~%float32 TopLeftY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundBox)))
  "Returns full string definition for message of type 'BoundBox"
  (cl:format cl:nil "#BoundBox field~%float32 BottomRightX~%float32 BottomRightY~%float32 TopLeftX~%float32 TopLeftY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundBox>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundBox>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundBox
    (cl:cons ':BottomRightX (BottomRightX msg))
    (cl:cons ':BottomRightY (BottomRightY msg))
    (cl:cons ':TopLeftX (TopLeftX msg))
    (cl:cons ':TopLeftY (TopLeftY msg))
))
