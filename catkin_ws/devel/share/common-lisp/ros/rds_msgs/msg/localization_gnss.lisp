; Auto-generated. Do not edit!


(cl:in-package rds_msgs-msg)


;//! \htmlinclude localization_gnss.msg.html

(cl:defclass <localization_gnss> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (detail
    :reader detail
    :initarg :detail
    :type rds_msgs-msg:localization_gnss_detail
    :initform (cl:make-instance 'rds_msgs-msg:localization_gnss_detail)))
)

(cl:defclass localization_gnss (<localization_gnss>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localization_gnss>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localization_gnss)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_msgs-msg:<localization_gnss> is deprecated: use rds_msgs-msg:localization_gnss instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <localization_gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:header-val is deprecated.  Use rds_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <localization_gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:pose-val is deprecated.  Use rds_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'detail-val :lambda-list '(m))
(cl:defmethod detail-val ((m <localization_gnss>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:detail-val is deprecated.  Use rds_msgs-msg:detail instead.")
  (detail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localization_gnss>) ostream)
  "Serializes a message object of type '<localization_gnss>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detail) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localization_gnss>) istream)
  "Deserializes a message object of type '<localization_gnss>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detail) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localization_gnss>)))
  "Returns string type for a message object of type '<localization_gnss>"
  "rds_msgs/localization_gnss")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localization_gnss)))
  "Returns string type for a message object of type 'localization_gnss"
  "rds_msgs/localization_gnss")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localization_gnss>)))
  "Returns md5sum for a message object of type '<localization_gnss>"
  "7f5e4523115c22b0b204c6ef79abd94a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localization_gnss)))
  "Returns md5sum for a message object of type 'localization_gnss"
  "7f5e4523115c22b0b204c6ef79abd94a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localization_gnss>)))
  "Returns full string definition for message of type '<localization_gnss>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/PoseWithCovariance pose~%localization_gnss_detail detail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rds_msgs/localization_gnss_detail~%uint16 date_week~%uint32 date_millisecs~%~%gnss_mode mode~%float32 correction_age~%~%uint8 num_sat_tracked~%uint8 num_sat_used_l1~%uint8 num_sat_used_l1l2~%~%================================================================================~%MSG: rds_msgs/gnss_mode~%int8 MODE_UNKNOWN = -1~%int8 MODE_SINGLE = 0~%int8 MODE_DIFF = 1~%int8 MODE_RTK_FLOAT = 2~%int8 MODE_RTK_INT = 3~%int8 MODE_PPP_CONVERGING = 4~%int8 MODE_PPP = 5~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localization_gnss)))
  "Returns full string definition for message of type 'localization_gnss"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/PoseWithCovariance pose~%localization_gnss_detail detail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rds_msgs/localization_gnss_detail~%uint16 date_week~%uint32 date_millisecs~%~%gnss_mode mode~%float32 correction_age~%~%uint8 num_sat_tracked~%uint8 num_sat_used_l1~%uint8 num_sat_used_l1l2~%~%================================================================================~%MSG: rds_msgs/gnss_mode~%int8 MODE_UNKNOWN = -1~%int8 MODE_SINGLE = 0~%int8 MODE_DIFF = 1~%int8 MODE_RTK_FLOAT = 2~%int8 MODE_RTK_INT = 3~%int8 MODE_PPP_CONVERGING = 4~%int8 MODE_PPP = 5~%int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localization_gnss>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localization_gnss>))
  "Converts a ROS message object to a list"
  (cl:list 'localization_gnss
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':detail (detail msg))
))
