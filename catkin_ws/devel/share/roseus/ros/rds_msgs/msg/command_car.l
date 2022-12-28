;; Auto-generated. Do not edit!


(when (boundp 'rds_msgs::command_car)
  (if (not (find-package "RDS_MSGS"))
    (make-package "RDS_MSGS"))
  (shadow 'command_car (find-package "RDS_MSGS")))
(unless (find-package "RDS_MSGS::COMMAND_CAR")
  (make-package "RDS_MSGS::COMMAND_CAR"))

(in-package "ROS")
;;//! \htmlinclude command_car.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rds_msgs::command_car
  :super ros::object
  :slots (_header _speed _front_steering _rear_steering _acceleration _deceleration ))

(defmethod rds_msgs::command_car
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speed __speed) 0.0)
    ((:front_steering __front_steering) 0.0)
    ((:rear_steering __rear_steering) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:deceleration __deceleration) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _speed (float __speed))
   (setq _front_steering (float __front_steering))
   (setq _rear_steering (float __rear_steering))
   (setq _acceleration (float __acceleration))
   (setq _deceleration (float __deceleration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:front_steering
   (&optional __front_steering)
   (if __front_steering (setq _front_steering __front_steering)) _front_steering)
  (:rear_steering
   (&optional __rear_steering)
   (if __rear_steering (setq _rear_steering __rear_steering)) _rear_steering)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:deceleration
   (&optional __deceleration)
   (if __deceleration (setq _deceleration __deceleration)) _deceleration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _speed
    4
    ;; float32 _front_steering
    4
    ;; float32 _rear_steering
    4
    ;; float32 _acceleration
    4
    ;; float32 _deceleration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_steering
       (sys::poke _front_steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_steering
       (sys::poke _rear_steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deceleration
       (sys::poke _deceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_steering
     (setq _front_steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_steering
     (setq _rear_steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acceleration
     (setq _acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deceleration
     (setq _deceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_msgs::command_car :md5sum-) "acc368c3bdfdfc6be58c8f9da8ae46ae")
(setf (get rds_msgs::command_car :datatype-) "rds_msgs/command_car")
(setf (get rds_msgs::command_car :definition-)
      "Header header
float32 speed
float32 front_steering
float32 rear_steering
float32 acceleration
float32 deceleration

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

")



(provide :rds_msgs/command_car "acc368c3bdfdfc6be58c8f9da8ae46ae")


