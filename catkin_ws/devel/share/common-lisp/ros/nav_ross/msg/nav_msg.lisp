; Auto-generated. Do not edit!


(cl:in-package nav_ross-msg)


;//! \htmlinclude nav_msg.msg.html

(cl:defclass <nav_msg> (roslisp-msg-protocol:ros-message)
  ((range_resolution
    :reader range_resolution
    :initarg :range_resolution
    :type cl:float
    :initform 0.0)
   (AzimuthSamples
    :reader AzimuthSamples
    :initarg :AzimuthSamples
    :type cl:fixnum
    :initform 0)
   (EncoderSize
    :reader EncoderSize
    :initarg :EncoderSize
    :type cl:fixnum
    :initform 0)
   (BinSize
    :reader BinSize
    :initarg :BinSize
    :type cl:fixnum
    :initform 0)
   (RangeInBins
    :reader RangeInBins
    :initarg :RangeInBins
    :type cl:fixnum
    :initform 0)
   (ExpectedRotationRate
    :reader ExpectedRotationRate
    :initarg :ExpectedRotationRate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass nav_msg (<nav_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav_ross-msg:<nav_msg> is deprecated: use nav_ross-msg:nav_msg instead.")))

(cl:ensure-generic-function 'range_resolution-val :lambda-list '(m))
(cl:defmethod range_resolution-val ((m <nav_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_ross-msg:range_resolution-val is deprecated.  Use nav_ross-msg:range_resolution instead.")
  (range_resolution m))

(cl:ensure-generic-function 'AzimuthSamples-val :lambda-list '(m))
(cl:defmethod AzimuthSamples-val ((m <nav_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_ross-msg:AzimuthSamples-val is deprecated.  Use nav_ross-msg:AzimuthSamples instead.")
  (AzimuthSamples m))

(cl:ensure-generic-function 'EncoderSize-val :lambda-list '(m))
(cl:defmethod EncoderSize-val ((m <nav_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_ross-msg:EncoderSize-val is deprecated.  Use nav_ross-msg:EncoderSize instead.")
  (EncoderSize m))

(cl:ensure-generic-function 'BinSize-val :lambda-list '(m))
(cl:defmethod BinSize-val ((m <nav_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_ross-msg:BinSize-val is deprecated.  Use nav_ross-msg:BinSize instead.")
  (BinSize m))

(cl:ensure-generic-function 'RangeInBins-val :lambda-list '(m))
(cl:defmethod RangeInBins-val ((m <nav_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_ross-msg:RangeInBins-val is deprecated.  Use nav_ross-msg:RangeInBins instead.")
  (RangeInBins m))

(cl:ensure-generic-function 'ExpectedRotationRate-val :lambda-list '(m))
(cl:defmethod ExpectedRotationRate-val ((m <nav_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav_ross-msg:ExpectedRotationRate-val is deprecated.  Use nav_ross-msg:ExpectedRotationRate instead.")
  (ExpectedRotationRate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_msg>) ostream)
  "Serializes a message object of type '<nav_msg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AzimuthSamples)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'AzimuthSamples)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EncoderSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'EncoderSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BinSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BinSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RangeInBins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RangeInBins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ExpectedRotationRate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ExpectedRotationRate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_msg>) istream)
  "Deserializes a message object of type '<nav_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_resolution) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AzimuthSamples)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'AzimuthSamples)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EncoderSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'EncoderSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BinSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BinSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RangeInBins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RangeInBins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ExpectedRotationRate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ExpectedRotationRate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_msg>)))
  "Returns string type for a message object of type '<nav_msg>"
  "nav_ross/nav_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_msg)))
  "Returns string type for a message object of type 'nav_msg"
  "nav_ross/nav_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_msg>)))
  "Returns md5sum for a message object of type '<nav_msg>"
  "18581dec57d2b4d9e4f4a5bc2f5e3e17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_msg)))
  "Returns md5sum for a message object of type 'nav_msg"
  "18581dec57d2b4d9e4f4a5bc2f5e3e17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_msg>)))
  "Returns full string definition for message of type '<nav_msg>"
  (cl:format cl:nil "float64 range_resolution~%uint16 AzimuthSamples~%uint16 EncoderSize~%uint16 BinSize~%uint16 RangeInBins~%uint16 ExpectedRotationRate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_msg)))
  "Returns full string definition for message of type 'nav_msg"
  (cl:format cl:nil "float64 range_resolution~%uint16 AzimuthSamples~%uint16 EncoderSize~%uint16 BinSize~%uint16 RangeInBins~%uint16 ExpectedRotationRate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_msg>))
  (cl:+ 0
     8
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_msg
    (cl:cons ':range_resolution (range_resolution msg))
    (cl:cons ':AzimuthSamples (AzimuthSamples msg))
    (cl:cons ':EncoderSize (EncoderSize msg))
    (cl:cons ':BinSize (BinSize msg))
    (cl:cons ':RangeInBins (RangeInBins msg))
    (cl:cons ':ExpectedRotationRate (ExpectedRotationRate msg))
))
