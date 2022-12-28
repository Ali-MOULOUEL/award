;; Auto-generated. Do not edit!


(when (boundp 'rds_foresight_camera_object_list_msgs::Obstacle)
  (if (not (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS"))
    (make-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS"))
  (shadow 'Obstacle (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS::OBSTACLE")
  (make-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html


(defclass rds_foresight_camera_object_list_msgs::Obstacle
  :super ros::object
  :slots (_boundBox _CenterX _CenterY _Class _DangerLevel _Distance _ID _OnPath _OnRoad _PositionX _PositionY _PositionZ _RealHeight _RealWidth _RelativeSpeed _TTC ))

(defmethod rds_foresight_camera_object_list_msgs::Obstacle
  (:init
   (&key
    ((:boundBox __boundBox) (instance rds_foresight_camera_object_list_msgs::BoundBox :init))
    ((:CenterX __CenterX) 0.0)
    ((:CenterY __CenterY) 0.0)
    ((:Class __Class) "")
    ((:DangerLevel __DangerLevel) 0.0)
    ((:Distance __Distance) 0.0)
    ((:ID __ID) 0.0)
    ((:OnPath __OnPath) nil)
    ((:OnRoad __OnRoad) nil)
    ((:PositionX __PositionX) 0.0)
    ((:PositionY __PositionY) 0.0)
    ((:PositionZ __PositionZ) 0.0)
    ((:RealHeight __RealHeight) 0.0)
    ((:RealWidth __RealWidth) 0.0)
    ((:RelativeSpeed __RelativeSpeed) 0.0)
    ((:TTC __TTC) 0.0)
    )
   (send-super :init)
   (setq _boundBox __boundBox)
   (setq _CenterX (float __CenterX))
   (setq _CenterY (float __CenterY))
   (setq _Class (string __Class))
   (setq _DangerLevel (float __DangerLevel))
   (setq _Distance (float __Distance))
   (setq _ID (float __ID))
   (setq _OnPath __OnPath)
   (setq _OnRoad __OnRoad)
   (setq _PositionX (float __PositionX))
   (setq _PositionY (float __PositionY))
   (setq _PositionZ (float __PositionZ))
   (setq _RealHeight (float __RealHeight))
   (setq _RealWidth (float __RealWidth))
   (setq _RelativeSpeed (float __RelativeSpeed))
   (setq _TTC (float __TTC))
   self)
  (:boundBox
   (&rest __boundBox)
   (if (keywordp (car __boundBox))
       (send* _boundBox __boundBox)
     (progn
       (if __boundBox (setq _boundBox (car __boundBox)))
       _boundBox)))
  (:CenterX
   (&optional __CenterX)
   (if __CenterX (setq _CenterX __CenterX)) _CenterX)
  (:CenterY
   (&optional __CenterY)
   (if __CenterY (setq _CenterY __CenterY)) _CenterY)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
  (:DangerLevel
   (&optional __DangerLevel)
   (if __DangerLevel (setq _DangerLevel __DangerLevel)) _DangerLevel)
  (:Distance
   (&optional __Distance)
   (if __Distance (setq _Distance __Distance)) _Distance)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:OnPath
   (&optional (__OnPath :null))
   (if (not (eq __OnPath :null)) (setq _OnPath __OnPath)) _OnPath)
  (:OnRoad
   (&optional (__OnRoad :null))
   (if (not (eq __OnRoad :null)) (setq _OnRoad __OnRoad)) _OnRoad)
  (:PositionX
   (&optional __PositionX)
   (if __PositionX (setq _PositionX __PositionX)) _PositionX)
  (:PositionY
   (&optional __PositionY)
   (if __PositionY (setq _PositionY __PositionY)) _PositionY)
  (:PositionZ
   (&optional __PositionZ)
   (if __PositionZ (setq _PositionZ __PositionZ)) _PositionZ)
  (:RealHeight
   (&optional __RealHeight)
   (if __RealHeight (setq _RealHeight __RealHeight)) _RealHeight)
  (:RealWidth
   (&optional __RealWidth)
   (if __RealWidth (setq _RealWidth __RealWidth)) _RealWidth)
  (:RelativeSpeed
   (&optional __RelativeSpeed)
   (if __RelativeSpeed (setq _RelativeSpeed __RelativeSpeed)) _RelativeSpeed)
  (:TTC
   (&optional __TTC)
   (if __TTC (setq _TTC __TTC)) _TTC)
  (:serialization-length
   ()
   (+
    ;; rds_foresight_camera_object_list_msgs/BoundBox _boundBox
    (send _boundBox :serialization-length)
    ;; float32 _CenterX
    4
    ;; float32 _CenterY
    4
    ;; string _Class
    4 (length _Class)
    ;; float32 _DangerLevel
    4
    ;; float32 _Distance
    4
    ;; float32 _ID
    4
    ;; bool _OnPath
    1
    ;; bool _OnRoad
    1
    ;; float32 _PositionX
    4
    ;; float32 _PositionY
    4
    ;; float32 _PositionZ
    4
    ;; float32 _RealHeight
    4
    ;; float32 _RealWidth
    4
    ;; float32 _RelativeSpeed
    4
    ;; float32 _TTC
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rds_foresight_camera_object_list_msgs/BoundBox _boundBox
       (send _boundBox :serialize s)
     ;; float32 _CenterX
       (sys::poke _CenterX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _CenterY
       (sys::poke _CenterY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _Class
       (write-long (length _Class) s) (princ _Class s)
     ;; float32 _DangerLevel
       (sys::poke _DangerLevel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Distance
       (sys::poke _Distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ID
       (sys::poke _ID (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _OnPath
       (if _OnPath (write-byte -1 s) (write-byte 0 s))
     ;; bool _OnRoad
       (if _OnRoad (write-byte -1 s) (write-byte 0 s))
     ;; float32 _PositionX
       (sys::poke _PositionX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _PositionY
       (sys::poke _PositionY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _PositionZ
       (sys::poke _PositionZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RealHeight
       (sys::poke _RealHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RealWidth
       (sys::poke _RealWidth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RelativeSpeed
       (sys::poke _RelativeSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TTC
       (sys::poke _TTC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rds_foresight_camera_object_list_msgs/BoundBox _boundBox
     (send _boundBox :deserialize buf ptr-) (incf ptr- (send _boundBox :serialization-length))
   ;; float32 _CenterX
     (setq _CenterX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _CenterY
     (setq _CenterY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _Class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _DangerLevel
     (setq _DangerLevel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Distance
     (setq _Distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ID
     (setq _ID (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _OnPath
     (setq _OnPath (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _OnRoad
     (setq _OnRoad (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _PositionX
     (setq _PositionX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _PositionY
     (setq _PositionY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _PositionZ
     (setq _PositionZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RealHeight
     (setq _RealHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RealWidth
     (setq _RealWidth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RelativeSpeed
     (setq _RelativeSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TTC
     (setq _TTC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_foresight_camera_object_list_msgs::Obstacle :md5sum-) "dd899dae8fd4048bf4873b1549287ed9")
(setf (get rds_foresight_camera_object_list_msgs::Obstacle :datatype-) "rds_foresight_camera_object_list_msgs/Obstacle")
(setf (get rds_foresight_camera_object_list_msgs::Obstacle :definition-)
      "#Obstacles field
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



(provide :rds_foresight_camera_object_list_msgs/Obstacle "dd899dae8fd4048bf4873b1549287ed9")


