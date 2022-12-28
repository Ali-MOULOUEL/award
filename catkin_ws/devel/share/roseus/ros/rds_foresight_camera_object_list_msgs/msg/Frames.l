;; Auto-generated. Do not edit!


(when (boundp 'rds_foresight_camera_object_list_msgs::Frames)
  (if (not (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS"))
    (make-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS"))
  (shadow 'Frames (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS::FRAMES")
  (make-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS::FRAMES"))

(in-package "ROS")
;;//! \htmlinclude Frames.msg.html


(defclass rds_foresight_camera_object_list_msgs::Frames
  :super ros::object
  :slots (_FrameIndex _FrameTime _Sensor _obstacles_array ))

(defmethod rds_foresight_camera_object_list_msgs::Frames
  (:init
   (&key
    ((:FrameIndex __FrameIndex) 0)
    ((:FrameTime __FrameTime) 0.0)
    ((:Sensor __Sensor) "")
    ((:obstacles_array __obstacles_array) ())
    )
   (send-super :init)
   (setq _FrameIndex (round __FrameIndex))
   (setq _FrameTime (float __FrameTime))
   (setq _Sensor (string __Sensor))
   (setq _obstacles_array __obstacles_array)
   self)
  (:FrameIndex
   (&optional __FrameIndex)
   (if __FrameIndex (setq _FrameIndex __FrameIndex)) _FrameIndex)
  (:FrameTime
   (&optional __FrameTime)
   (if __FrameTime (setq _FrameTime __FrameTime)) _FrameTime)
  (:Sensor
   (&optional __Sensor)
   (if __Sensor (setq _Sensor __Sensor)) _Sensor)
  (:obstacles_array
   (&rest __obstacles_array)
   (if (keywordp (car __obstacles_array))
       (send* _obstacles_array __obstacles_array)
     (progn
       (if __obstacles_array (setq _obstacles_array (car __obstacles_array)))
       _obstacles_array)))
  (:serialization-length
   ()
   (+
    ;; uint32 _FrameIndex
    4
    ;; float64 _FrameTime
    8
    ;; string _Sensor
    4 (length _Sensor)
    ;; rds_foresight_camera_object_list_msgs/Obstacle[] _obstacles_array
    (apply #'+ (send-all _obstacles_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _FrameIndex
       (write-long _FrameIndex s)
     ;; float64 _FrameTime
       (sys::poke _FrameTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _Sensor
       (write-long (length _Sensor) s) (princ _Sensor s)
     ;; rds_foresight_camera_object_list_msgs/Obstacle[] _obstacles_array
     (write-long (length _obstacles_array) s)
     (dolist (elem _obstacles_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _FrameIndex
     (setq _FrameIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _FrameTime
     (setq _FrameTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _Sensor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Sensor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rds_foresight_camera_object_list_msgs/Obstacle[] _obstacles_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles_array (let (r) (dotimes (i n) (push (instance rds_foresight_camera_object_list_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rds_foresight_camera_object_list_msgs::Frames :md5sum-) "78983151239f6dca98568f526b0d43f7")
(setf (get rds_foresight_camera_object_list_msgs::Frames :datatype-) "rds_foresight_camera_object_list_msgs/Frames")
(setf (get rds_foresight_camera_object_list_msgs::Frames :definition-)
      "#Frames field 
uint32 FrameIndex
float64 FrameTime
string Sensor
Obstacle[] obstacles_array

================================================================================
MSG: rds_foresight_camera_object_list_msgs/Obstacle
#Obstacles field
BoundBox boundBox
float32 CenterX
float32 CenterY
string Class
float32 DangerLevel
float32 Distance
float32 ID
bool OnPath
bool OnRoad
float32 PositionX
float32 PositionY
float32 PositionZ
float32 RealHeight
float32 RealWidth 
float32 RelativeSpeed
float32 TTC




 
================================================================================
MSG: rds_foresight_camera_object_list_msgs/BoundBox
#BoundBox field
float32 BottomRightX
float32 BottomRightY
float32 TopLeftX
float32 TopLeftY

")



(provide :rds_foresight_camera_object_list_msgs/Frames "78983151239f6dca98568f526b0d43f7")


