; Auto-generated. Do not edit!


(cl:in-package rds_perception_msgs-msg)


;//! \htmlinclude tracking.msg.html

(cl:defclass <tracking> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracks
    :reader tracks
    :initarg :tracks
    :type (cl:vector rds_perception_msgs-msg:track)
   :initform (cl:make-array 0 :element-type 'rds_perception_msgs-msg:track :initial-element (cl:make-instance 'rds_perception_msgs-msg:track))))
)

(cl:defclass tracking (<tracking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tracking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tracking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_perception_msgs-msg:<tracking> is deprecated: use rds_perception_msgs-msg:tracking instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <tracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:header-val is deprecated.  Use rds_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracks-val :lambda-list '(m))
(cl:defmethod tracks-val ((m <tracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_perception_msgs-msg:tracks-val is deprecated.  Use rds_perception_msgs-msg:tracks instead.")
  (tracks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tracking>) ostream)
  "Serializes a message object of type '<tracking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tracks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tracking>) istream)
  "Deserializes a message object of type '<tracking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rds_perception_msgs-msg:track))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tracking>)))
  "Returns string type for a message object of type '<tracking>"
  "rds_perception_msgs/tracking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tracking)))
  "Returns string type for a message object of type 'tracking"
  "rds_perception_msgs/tracking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tracking>)))
  "Returns md5sum for a message object of type '<tracking>"
  "a03ed08238f2e628af885c6ceb7c7f9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tracking)))
  "Returns md5sum for a message object of type 'tracking"
  "a03ed08238f2e628af885c6ceb7c7f9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tracking>)))
  "Returns full string definition for message of type '<tracking>"
  (cl:format cl:nil "Header header~%~%track[] tracks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rds_perception_msgs/track~%uint32 id            # unique identifier of the track~%float32[] state      # state~%float32[] covariance # covariance~%label label            # type of the track~%extent extent        # extent model for the track shape representation~%float64 uptime~%float64 misstime~%float32 box_center_x # box center~%float32 box_center_y # box center~%float32 axis_1x      # main axis of the box~%float32 axis_1y      # main axis of the box~%float32 axis_2x      # secondary axis of the box~%float32 axis_2y       # secondary axis of the box~%float32 dim1         # dimension of box along main axis or radius of the circle~%float32 dim2         # dimension of box along secondary axis (or radius of the circle)~%~%================================================================================~%MSG: rds_perception_msgs/label~%# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%================================================================================~%MSG: rds_perception_msgs/extent~%# Tracking extent type~%uint8 EXTENT_ELLIPSE = 0~%uint8 EXTENT_OBB = 1~%~%uint8 extent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tracking)))
  "Returns full string definition for message of type 'tracking"
  (cl:format cl:nil "Header header~%~%track[] tracks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rds_perception_msgs/track~%uint32 id            # unique identifier of the track~%float32[] state      # state~%float32[] covariance # covariance~%label label            # type of the track~%extent extent        # extent model for the track shape representation~%float64 uptime~%float64 misstime~%float32 box_center_x # box center~%float32 box_center_y # box center~%float32 axis_1x      # main axis of the box~%float32 axis_1y      # main axis of the box~%float32 axis_2x      # secondary axis of the box~%float32 axis_2y       # secondary axis of the box~%float32 dim1         # dimension of box along main axis or radius of the circle~%float32 dim2         # dimension of box along secondary axis (or radius of the circle)~%~%================================================================================~%MSG: rds_perception_msgs/label~%# Tracking object type~%uint8 LABEL_INVALID = 0~%uint8 LABEL_UNKNOWN = 1~%uint8 LABEL_CAR = 2~%uint8 LABEL_PEDESTRIAN = 3~%uint8 LABEL_BIKE = 4~%~%uint8 label~%~%================================================================================~%MSG: rds_perception_msgs/extent~%# Tracking extent type~%uint8 EXTENT_ELLIPSE = 0~%uint8 EXTENT_OBB = 1~%~%uint8 extent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tracking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tracking>))
  "Converts a ROS message object to a list"
  (cl:list 'tracking
    (cl:cons ':header (header msg))
    (cl:cons ':tracks (tracks msg))
))
