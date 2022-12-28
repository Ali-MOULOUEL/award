;; Auto-generated. Do not edit!


(when (boundp 'rds_msgs::localization_gnss)
  (if (not (find-package "RDS_MSGS"))
    (make-package "RDS_MSGS"))
  (shadow 'localization_gnss (find-package "RDS_MSGS")))
(unless (find-package "RDS_MSGS::LOCALIZATION_GNSS")
  (make-package "RDS_MSGS::LOCALIZATION_GNSS"))

(in-package "ROS")
;;//! \htmlinclude localization_gnss.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rds_msgs::localization_gnss
  :super ros::object
  :slots (_header _pose _detail ))

(defmethod rds_msgs::localization_gnss
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:detail __detail) (instance rds_msgs::localization_gnss_detail :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _detail __detail)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:detail
   (&rest __detail)
   (if (keywordp (car __detail))
       (send* _detail __detail)
     (progn
       (if __detail (setq _detail (car __detail)))
       _detail)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; rds_msgs/localization_gnss_detail _detail
    (send _detail :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; rds_msgs/localization_gnss_detail _detail
       (send _detail :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; rds_msgs/localization_gnss_detail _detail
     (send _detail :deserialize buf ptr-) (incf ptr- (send _detail :serialization-length))
   ;;
   self)
  )

(setf (get rds_msgs::localization_gnss :md5sum-) "7f5e4523115c22b0b204c6ef79abd94a")
(setf (get rds_msgs::localization_gnss :datatype-) "rds_msgs/localization_gnss")
(setf (get rds_msgs::localization_gnss :definition-)
      "std_msgs/Header header
geometry_msgs/PoseWithCovariance pose
localization_gnss_detail detail

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: rds_msgs/localization_gnss_detail
uint16 date_week
uint32 date_millisecs

gnss_mode mode
float32 correction_age

uint8 num_sat_tracked
uint8 num_sat_used_l1
uint8 num_sat_used_l1l2

================================================================================
MSG: rds_msgs/gnss_mode
int8 MODE_UNKNOWN = -1
int8 MODE_SINGLE = 0
int8 MODE_DIFF = 1
int8 MODE_RTK_FLOAT = 2
int8 MODE_RTK_INT = 3
int8 MODE_PPP_CONVERGING = 4
int8 MODE_PPP = 5
int8 mode


")



(provide :rds_msgs/localization_gnss "7f5e4523115c22b0b204c6ef79abd94a")


