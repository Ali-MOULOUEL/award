;; Auto-generated. Do not edit!


(when (boundp 'rds_perception_msgs::track)
  (if (not (find-package "RDS_PERCEPTION_MSGS"))
    (make-package "RDS_PERCEPTION_MSGS"))
  (shadow 'track (find-package "RDS_PERCEPTION_MSGS")))
(unless (find-package "RDS_PERCEPTION_MSGS::TRACK")
  (make-package "RDS_PERCEPTION_MSGS::TRACK"))

(in-package "ROS")
;;//! \htmlinclude track.msg.html


(defclass rds_perception_msgs::track
  :super ros::object
  :slots (_id _state _covariance _label _extent _uptime _misstime _box_center_x _box_center_y _axis_1x _axis_1y _axis_2x _axis_2y _dim1 _dim2 ))

(defmethod rds_perception_msgs::track
  (:init
   (&key
    ((:id __id) 0)
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:covariance __covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:label __label) (instance rds_perception_msgs::label :init))
    ((:extent __extent) (instance rds_perception_msgs::extent :init))
    ((:uptime __uptime) 0.0)
    ((:misstime __misstime) 0.0)
    ((:box_center_x __box_center_x) 0.0)
    ((:box_center_y __box_center_y) 0.0)
    ((:axis_1x __axis_1x) 0.0)
    ((:axis_1y __axis_1y) 0.0)
    ((:axis_2x __axis_2x) 0.0)
    ((:axis_2y __axis_2y) 0.0)
    ((:dim1 __dim1) 0.0)
    ((:dim2 __dim2) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _state __state)
   (setq _covariance __covariance)
   (setq _label __label)
   (setq _extent __extent)
   (setq _uptime (float __uptime))
   (setq _misstime (float __misstime))
   (setq _box_center_x (float __box_center_x))
   (setq _box_center_y (float __box_center_y))
   (setq _axis_1x (float __axis_1x))
   (setq _axis_1y (float __axis_1y))
   (setq _axis_2x (float __axis_2x))
   (setq _axis_2y (float __axis_2y))
   (setq _dim1 (float __dim1))
   (setq _dim2 (float __dim2))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:label
   (&rest __label)
   (if (keywordp (car __label))
       (send* _label __label)
     (progn
       (if __label (setq _label (car __label)))
       _label)))
  (:extent
   (&rest __extent)
   (if (keywordp (car __extent))
       (send* _extent __extent)
     (progn
       (if __extent (setq _extent (car __extent)))
       _extent)))
  (:uptime
   (&optional __uptime)
   (if __uptime (setq _uptime __uptime)) _uptime)
  (:misstime
   (&optional __misstime)
   (if __misstime (setq _misstime __misstime)) _misstime)
  (:box_center_x
   (&optional __box_center_x)
   (if __box_center_x (setq _box_center_x __box_center_x)) _box_center_x)
  (:box_center_y
   (&optional __box_center_y)
   (if __box_center_y (setq _box_center_y __box_center_y)) _box_center_y)
  (:axis_1x
   (&optional __axis_1x)
   (if __axis_1x (setq _axis_1x __axis_1x)) _axis_1x)
  (:axis_1y
   (&optional __axis_1y)
   (if __axis_1y (setq _axis_1y __axis_1y)) _axis_1y)
  (:axis_2x
   (&optional __axis_2x)
   (if __axis_2x (setq _axis_2x __axis_2x)) _axis_2x)
  (:axis_2y
   (&optional __axis_2y)
   (if __axis_2y (setq _axis_2y __axis_2y)) _axis_2y)
  (:dim1
   (&optional __dim1)
   (if __dim1 (setq _dim1 __dim1)) _dim1)
  (:dim2
   (&optional __dim2)
   (if __dim2 (setq _dim2 __dim2)) _dim2)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float32[] _state
    (* 4    (length _state)) 4
    ;; float32[] _covariance
    (* 4    (length _covariance)) 4
    ;; rds_perception_msgs/label _label
    (send _label :serialization-length)
    ;; rds_perception_msgs/extent _extent
    (send _extent :serialization-length)
    ;; float64 _uptime
    8
    ;; float64 _misstime
    8
    ;; float32 _box_center_x
    4
    ;; float32 _box_center_y
    4
    ;; float32 _axis_1x
    4
    ;; float32 _axis_1y
    4
    ;; float32 _axis_2x
    4
    ;; float32 _axis_2y
    4
    ;; float32 _dim1
    4
    ;; float32 _dim2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _covariance
     (write-long (length _covariance) s)
     (dotimes (i (length _covariance))
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; rds_perception_msgs/label _label
       (send _label :serialize s)
     ;; rds_perception_msgs/extent _extent
       (send _extent :serialize s)
     ;; float64 _uptime
       (sys::poke _uptime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _misstime
       (sys::poke _misstime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _box_center_x
       (sys::poke _box_center_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _box_center_y
       (sys::poke _box_center_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _axis_1x
       (sys::poke _axis_1x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _axis_1y
       (sys::poke _axis_1y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _axis_2x
       (sys::poke _axis_2x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _axis_2y
       (sys::poke _axis_2y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dim1
       (sys::poke _dim1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dim2
       (sys::poke _dim2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; rds_perception_msgs/label _label
     (send _label :deserialize buf ptr-) (incf ptr- (send _label :serialization-length))
   ;; rds_perception_msgs/extent _extent
     (send _extent :deserialize buf ptr-) (incf ptr- (send _extent :serialization-length))
   ;; float64 _uptime
     (setq _uptime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _misstime
     (setq _misstime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _box_center_x
     (setq _box_center_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _box_center_y
     (setq _box_center_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _axis_1x
     (setq _axis_1x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _axis_1y
     (setq _axis_1y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _axis_2x
     (setq _axis_2x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _axis_2y
     (setq _axis_2y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dim1
     (setq _dim1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dim2
     (setq _dim2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_perception_msgs::track :md5sum-) "f8e1e3a8013bff6348f166fe006c2c91")
(setf (get rds_perception_msgs::track :datatype-) "rds_perception_msgs/track")
(setf (get rds_perception_msgs::track :definition-)
      "uint32 id            # unique identifier of the track
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



(provide :rds_perception_msgs/track "f8e1e3a8013bff6348f166fe006c2c91")


