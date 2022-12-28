;; Auto-generated. Do not edit!


(when (boundp 'rds_perception_msgs::tracking)
  (if (not (find-package "RDS_PERCEPTION_MSGS"))
    (make-package "RDS_PERCEPTION_MSGS"))
  (shadow 'tracking (find-package "RDS_PERCEPTION_MSGS")))
(unless (find-package "RDS_PERCEPTION_MSGS::TRACKING")
  (make-package "RDS_PERCEPTION_MSGS::TRACKING"))

(in-package "ROS")
;;//! \htmlinclude tracking.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rds_perception_msgs::tracking
  :super ros::object
  :slots (_header _tracks ))

(defmethod rds_perception_msgs::tracking
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracks __tracks) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracks __tracks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracks
   (&rest __tracks)
   (if (keywordp (car __tracks))
       (send* _tracks __tracks)
     (progn
       (if __tracks (setq _tracks (car __tracks)))
       _tracks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rds_perception_msgs/track[] _tracks
    (apply #'+ (send-all _tracks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rds_perception_msgs/track[] _tracks
     (write-long (length _tracks) s)
     (dolist (elem _tracks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rds_perception_msgs/track[] _tracks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracks (let (r) (dotimes (i n) (push (instance rds_perception_msgs::track :init) r)) r))
     (dolist (elem- _tracks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rds_perception_msgs::tracking :md5sum-) "a03ed08238f2e628af885c6ceb7c7f9a")
(setf (get rds_perception_msgs::tracking :datatype-) "rds_perception_msgs/tracking")
(setf (get rds_perception_msgs::tracking :definition-)
      "Header header

track[] tracks

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
MSG: rds_perception_msgs/track
uint32 id            # unique identifier of the track
float32[] state      # state
float32[] covariance # covariance
label label            # type of the track
extent extent        # extent model for the track shape representation
float64 uptime
float64 misstime
float32 box_center_x # box center
float32 box_center_y # box center
float32 axis_1x      # main axis of the box
float32 axis_1y      # main axis of the box
float32 axis_2x      # secondary axis of the box
float32 axis_2y       # secondary axis of the box
float32 dim1         # dimension of box along main axis or radius of the circle
float32 dim2         # dimension of box along secondary axis (or radius of the circle)

================================================================================
MSG: rds_perception_msgs/label
# Tracking object type
uint8 LABEL_INVALID = 0
uint8 LABEL_UNKNOWN = 1
uint8 LABEL_CAR = 2
uint8 LABEL_PEDESTRIAN = 3
uint8 LABEL_BIKE = 4

uint8 label

================================================================================
MSG: rds_perception_msgs/extent
# Tracking extent type
uint8 EXTENT_ELLIPSE = 0
uint8 EXTENT_OBB = 1

uint8 extent

")



(provide :rds_perception_msgs/tracking "a03ed08238f2e628af885c6ceb7c7f9a")


