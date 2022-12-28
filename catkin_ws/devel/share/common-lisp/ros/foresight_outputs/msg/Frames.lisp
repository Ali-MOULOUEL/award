; Auto-generated. Do not edit!


(cl:in-package foresight_outputs-msg)


;//! \htmlinclude Frames.msg.html

(cl:defclass <Frames> (roslisp-msg-protocol:ros-message)
  ((FrameIndex
    :reader FrameIndex
    :initarg :FrameIndex
    :type cl:integer
    :initform 0)
   (FrameTime
    :reader FrameTime
    :initarg :FrameTime
    :type cl:float
    :initform 0.0)
   (obstacles_array
    :reader obstacles_array
    :initarg :obstacles_array
    :type (cl:vector foresight_outputs-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'foresight_outputs-msg:Obstacle :initial-element (cl:make-instance 'foresight_outputs-msg:Obstacle))))
)

(cl:defclass Frames (<Frames>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frames>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frames)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foresight_outputs-msg:<Frames> is deprecated: use foresight_outputs-msg:Frames instead.")))

(cl:ensure-generic-function 'FrameIndex-val :lambda-list '(m))
(cl:defmethod FrameIndex-val ((m <Frames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foresight_outputs-msg:FrameIndex-val is deprecated.  Use foresight_outputs-msg:FrameIndex instead.")
  (FrameIndex m))

(cl:ensure-generic-function 'FrameTime-val :lambda-list '(m))
(cl:defmethod FrameTime-val ((m <Frames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foresight_outputs-msg:FrameTime-val is deprecated.  Use foresight_outputs-msg:FrameTime instead.")
  (FrameTime m))

(cl:ensure-generic-function 'obstacles_array-val :lambda-list '(m))
(cl:defmethod obstacles_array-val ((m <Frames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foresight_outputs-msg:obstacles_array-val is deprecated.  Use foresight_outputs-msg:obstacles_array instead.")
  (obstacles_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frames>) ostream)
  "Serializes a message object of type '<Frames>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FrameIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'FrameIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'FrameIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'FrameIndex)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'FrameTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frames>) istream)
  "Deserializes a message object of type '<Frames>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FrameIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'FrameIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'FrameIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'FrameIndex)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'FrameTime) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'foresight_outputs-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frames>)))
  "Returns string type for a message object of type '<Frames>"
  "foresight_outputs/Frames")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frames)))
  "Returns string type for a message object of type 'Frames"
  "foresight_outputs/Frames")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frames>)))
  "Returns md5sum for a message object of type '<Frames>"
  "6dd6fdfb9993038c0bfc63e5d2095638")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frames)))
  "Returns md5sum for a message object of type 'Frames"
  "6dd6fdfb9993038c0bfc63e5d2095638")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frames>)))
  "Returns full string definition for message of type '<Frames>"
  (cl:format cl:nil "#Frames field ~%uint32 FrameIndex~%float64 FrameTime~%Obstacle[] obstacles_array~%~%================================================================================~%MSG: foresight_outputs/Obstacle~%#Obstacles field~%BoundBox boundBox~%float32 CenterX~%float32 CenterY~%string Class~%float32 DangerLevel~%float32 Distance~%float32 ID~%bool OnPath~%bool OnRoad~%float32 PositionX~%float32 PositionY~%float32 PositionZ~%float32 RealHeight~%float32 RealWidth ~%float32 RelativeSpeed~%float32 TTC~%~%~%~%~% ~%================================================================================~%MSG: foresight_outputs/BoundBox~%#BoundBox field~%float32 BottomRightX~%float32 BottomRightY~%float32 TopLeftX~%float32 TopLeftY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frames)))
  "Returns full string definition for message of type 'Frames"
  (cl:format cl:nil "#Frames field ~%uint32 FrameIndex~%float64 FrameTime~%Obstacle[] obstacles_array~%~%================================================================================~%MSG: foresight_outputs/Obstacle~%#Obstacles field~%BoundBox boundBox~%float32 CenterX~%float32 CenterY~%string Class~%float32 DangerLevel~%float32 Distance~%float32 ID~%bool OnPath~%bool OnRoad~%float32 PositionX~%float32 PositionY~%float32 PositionZ~%float32 RealHeight~%float32 RealWidth ~%float32 RelativeSpeed~%float32 TTC~%~%~%~%~% ~%================================================================================~%MSG: foresight_outputs/BoundBox~%#BoundBox field~%float32 BottomRightX~%float32 BottomRightY~%float32 TopLeftX~%float32 TopLeftY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frames>))
  (cl:+ 0
     4
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frames>))
  "Converts a ROS message object to a list"
  (cl:list 'Frames
    (cl:cons ':FrameIndex (FrameIndex msg))
    (cl:cons ':FrameTime (FrameTime msg))
    (cl:cons ':obstacles_array (obstacles_array msg))
))
