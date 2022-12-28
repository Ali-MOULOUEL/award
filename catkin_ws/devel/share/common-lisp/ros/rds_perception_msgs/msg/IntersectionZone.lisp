; Auto-generated. Do not edit!


(cl:in-package rds_perception_msgs-msg)


;//! \htmlinclude IntersectionZone.msg.html

(cl:defclass <IntersectionZone> (roslisp-msg-protocol:ros-message)
  ((provider
    :reader provider
    :initarg :provider
    :type cl:fixnum
    :initform 0)
   (ignored_blind_obstacles
    :reader ignored_blind_obstacles
    :initarg :ignored_blind_obstacles
    :type (cl:vector rds_perception_msgs-msg:label)
   :initform (cl:make-array 0 :element-type 'rds_perception_msgs-msg:label :initial-element (cl:make-instance 'rds_perception_msgs-msg:label))))
)

(cl:defclass IntersectionZone (<IntersectionZone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionZone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionZone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_perception_msgs-msg:<IntersectionZone> is deprecated: use rds_perception_msgs-msg:IntersectionZone instead.")))

(cl:ensure-generic-function 'provider-val :lambda-list '(m))
(cl:defmethod provider-val ((m <IntersectionZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:provider-val is deprecated.  Use rds_perception_msgs-msg:provider instead.")
  (provider m))

(cl:ensure-generic-function 'ignored_blind_obstacles-val :lambda-list '(m))
(cl:defmethod ignored_blind_obstacles-val ((m <IntersectionZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:ignored_blind_obstacles-val is deprecated.  Use rds_perception_msgs-msg:ignored_blind_obstacles instead.")
  (ignored_blind_obstacles m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IntersectionZone>)))
    "Constants for message type '<IntersectionZone>"
  '((:PROVIDER_PERCEPTION . 1)
    (:PROVIDER_ADS_B . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IntersectionZone)))
    "Constants for message type 'IntersectionZone"
  '((:PROVIDER_PERCEPTION . 1)
    (:PROVIDER_ADS_B . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionZone>) ostream)
  "Serializes a message object of type '<IntersectionZone>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'provider)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ignored_blind_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ignored_blind_obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionZone>) istream)
  "Deserializes a message object of type '<IntersectionZone>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'provider)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ignored_blind_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ignored_blind_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rds_perception_msgs-msg:label))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionZone>)))
  "Returns string type for a message object of type '<IntersectionZone>"
  "rds_perception_msgs/IntersectionZone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionZone)))
  "Returns string type for a message object of type 'IntersectionZone"
  "rds_perception_msgs/IntersectionZone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionZone>)))
  "Returns md5sum for a message object of type '<IntersectionZone>"
  "42dde0da16a1fa71a8c22e5108233e9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionZone)))
  "Returns md5sum for a message object of type 'IntersectionZone"
  "42dde0da16a1fa71a8c22e5108233e9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionZone>)))
  "Returns full string definition for message of type '<IntersectionZone>"
  (cl:format cl:nil "uint8 PROVIDER_PERCEPTION = 1~%uint8 PROVIDER_ADS_B = 2~%uint8 provider~%~%#geometry_msgs/Polygon area~%~%# Filled only when provider is perception based~%rds_perception_msgs/label[] ignored_blind_obstacles~%~%================================================================================~%MSG: rds_perception_msgs/label~%# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionZone)))
  "Returns full string definition for message of type 'IntersectionZone"
  (cl:format cl:nil "uint8 PROVIDER_PERCEPTION = 1~%uint8 PROVIDER_ADS_B = 2~%uint8 provider~%~%#geometry_msgs/Polygon area~%~%# Filled only when provider is perception based~%rds_perception_msgs/label[] ignored_blind_obstacles~%~%================================================================================~%MSG: rds_perception_msgs/label~%# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionZone>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ignored_blind_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionZone>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionZone
    (cl:cons ':provider (provider msg))
    (cl:cons ':ignored_blind_obstacles (ignored_blind_obstacles msg))
))
