; Auto-generated. Do not edit!


(cl:in-package rds_perception_msgs-msg)


;//! \htmlinclude track.msg.html

(cl:defclass <track> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (label
    :reader label
    :initarg :label
    :type rds_perception_msgs-msg:label
    :initform (cl:make-instance 'rds_perception_msgs-msg:label))
   (extent
    :reader extent
    :initarg :extent
    :type rds_perception_msgs-msg:extent
    :initform (cl:make-instance 'rds_perception_msgs-msg:extent))
   (uptime
    :reader uptime
    :initarg :uptime
    :type cl:float
    :initform 0.0)
   (misstime
    :reader misstime
    :initarg :misstime
    :type cl:float
    :initform 0.0)
   (box_center_x
    :reader box_center_x
    :initarg :box_center_x
    :type cl:float
    :initform 0.0)
   (box_center_y
    :reader box_center_y
    :initarg :box_center_y
    :type cl:float
    :initform 0.0)
   (axis_1x
    :reader axis_1x
    :initarg :axis_1x
    :type cl:float
    :initform 0.0)
   (axis_1y
    :reader axis_1y
    :initarg :axis_1y
    :type cl:float
    :initform 0.0)
   (axis_2x
    :reader axis_2x
    :initarg :axis_2x
    :type cl:float
    :initform 0.0)
   (axis_2y
    :reader axis_2y
    :initarg :axis_2y
    :type cl:float
    :initform 0.0)
   (dim1
    :reader dim1
    :initarg :dim1
    :type cl:float
    :initform 0.0)
   (dim2
    :reader dim2
    :initarg :dim2
    :type cl:float
    :initform 0.0))
)

(cl:defclass track (<track>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <track>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'track)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_perception_msgs-msg:<track> is deprecated: use rds_perception_msgs-msg:track instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:id-val is deprecated.  Use rds_perception_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:state-val is deprecated.  Use rds_perception_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:covariance-val is deprecated.  Use rds_perception_msgs-msg:covariance instead.")
  (covariance m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:label-val is deprecated.  Use rds_perception_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'extent-val :lambda-list '(m))
(cl:defmethod extent-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:extent-val is deprecated.  Use rds_perception_msgs-msg:extent instead.")
  (extent m))

(cl:ensure-generic-function 'uptime-val :lambda-list '(m))
(cl:defmethod uptime-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:uptime-val is deprecated.  Use rds_perception_msgs-msg:uptime instead.")
  (uptime m))

(cl:ensure-generic-function 'misstime-val :lambda-list '(m))
(cl:defmethod misstime-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:misstime-val is deprecated.  Use rds_perception_msgs-msg:misstime instead.")
  (misstime m))

(cl:ensure-generic-function 'box_center_x-val :lambda-list '(m))
(cl:defmethod box_center_x-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:box_center_x-val is deprecated.  Use rds_perception_msgs-msg:box_center_x instead.")
  (box_center_x m))

(cl:ensure-generic-function 'box_center_y-val :lambda-list '(m))
(cl:defmethod box_center_y-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:box_center_y-val is deprecated.  Use rds_perception_msgs-msg:box_center_y instead.")
  (box_center_y m))

(cl:ensure-generic-function 'axis_1x-val :lambda-list '(m))
(cl:defmethod axis_1x-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:axis_1x-val is deprecated.  Use rds_perception_msgs-msg:axis_1x instead.")
  (axis_1x m))

(cl:ensure-generic-function 'axis_1y-val :lambda-list '(m))
(cl:defmethod axis_1y-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:axis_1y-val is deprecated.  Use rds_perception_msgs-msg:axis_1y instead.")
  (axis_1y m))

(cl:ensure-generic-function 'axis_2x-val :lambda-list '(m))
(cl:defmethod axis_2x-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:axis_2x-val is deprecated.  Use rds_perception_msgs-msg:axis_2x instead.")
  (axis_2x m))

(cl:ensure-generic-function 'axis_2y-val :lambda-list '(m))
(cl:defmethod axis_2y-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:axis_2y-val is deprecated.  Use rds_perception_msgs-msg:axis_2y instead.")
  (axis_2y m))

(cl:ensure-generic-function 'dim1-val :lambda-list '(m))
(cl:defmethod dim1-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:dim1-val is deprecated.  Use rds_perception_msgs-msg:dim1 instead.")
  (dim1 m))

(cl:ensure-generic-function 'dim2-val :lambda-list '(m))
(cl:defmethod dim2-val ((m <track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:dim2-val is deprecated.  Use rds_perception_msgs-msg:dim2 instead.")
  (dim2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <track>) ostream)
  "Serializes a message object of type '<track>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'covariance))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'label) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extent) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'uptime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'misstime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'box_center_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'box_center_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'axis_1x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'axis_1y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'axis_2x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'axis_2y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dim1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dim2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <track>) istream)
  "Deserializes a message object of type '<track>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'label) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extent) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uptime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'misstime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'box_center_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'box_center_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'axis_1x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'axis_1y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'axis_2x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'axis_2y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dim1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dim2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<track>)))
  "Returns string type for a message object of type '<track>"
  "rds_perception_msgs/track")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'track)))
  "Returns string type for a message object of type 'track"
  "rds_perception_msgs/track")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<track>)))
  "Returns md5sum for a message object of type '<track>"
  "f8e1e3a8013bff6348f166fe006c2c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'track)))
  "Returns md5sum for a message object of type 'track"
  "f8e1e3a8013bff6348f166fe006c2c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<track>)))
  "Returns full string definition for message of type '<track>"
  (cl:format cl:nil "uint32 id            # unique identifier of the track~%float32[] state      # state~%float32[] covariance # covariance~%label label            # type of the track~%extent extent        # extent model for the track shape representation~%float64 uptime~%float64 misstime~%float32 box_center_x # box center~%float32 box_center_y # box center~%float32 axis_1x      # main axis of the box~%float32 axis_1y      # main axis of the box~%float32 axis_2x      # secondary axis of the box~%float32 axis_2y       # secondary axis of the box~%float32 dim1         # dimension of box along main axis or radius of the circle~%float32 dim2         # dimension of box along secondary axis (or radius of the circle)~%~%================================================================================~%MSG: rds_perception_msgs/label~%# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%================================================================================~%MSG: rds_perception_msgs/extent~%# Tracking extent type~%uint8 EXTENT_ELLIPSE = 0~%uint8 EXTENT_OBB = 1~%~%uint8 extent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'track)))
  "Returns full string definition for message of type 'track"
  (cl:format cl:nil "uint32 id            # unique identifier of the track~%float32[] state      # state~%float32[] covariance # covariance~%label label            # type of the track~%extent extent        # extent model for the track shape representation~%float64 uptime~%float64 misstime~%float32 box_center_x # box center~%float32 box_center_y # box center~%float32 axis_1x      # main axis of the box~%float32 axis_1y      # main axis of the box~%float32 axis_2x      # secondary axis of the box~%float32 axis_2y       # secondary axis of the box~%float32 dim1         # dimension of box along main axis or radius of the circle~%float32 dim2         # dimension of box along secondary axis (or radius of the circle)~%~%================================================================================~%MSG: rds_perception_msgs/label~%# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%================================================================================~%MSG: rds_perception_msgs/extent~%# Tracking extent type~%uint8 EXTENT_ELLIPSE = 0~%uint8 EXTENT_OBB = 1~%~%uint8 extent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <track>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extent))
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <track>))
  "Converts a ROS message object to a list"
  (cl:list 'track
    (cl:cons ':id (id msg))
    (cl:cons ':state (state msg))
    (cl:cons ':covariance (covariance msg))
    (cl:cons ':label (label msg))
    (cl:cons ':extent (extent msg))
    (cl:cons ':uptime (uptime msg))
    (cl:cons ':misstime (misstime msg))
    (cl:cons ':box_center_x (box_center_x msg))
    (cl:cons ':box_center_y (box_center_y msg))
    (cl:cons ':axis_1x (axis_1x msg))
    (cl:cons ':axis_1y (axis_1y msg))
    (cl:cons ':axis_2x (axis_2x msg))
    (cl:cons ':axis_2y (axis_2y msg))
    (cl:cons ':dim1 (dim1 msg))
    (cl:cons ':dim2 (dim2 msg))
))
