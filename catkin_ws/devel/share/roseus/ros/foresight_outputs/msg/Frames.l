;; Auto-generated. Do not edit!


(when (boundp 'foresight_outputs::Frames)
  (if (not (find-package "FORESIGHT_OUTPUTS"))
    (make-package "FORESIGHT_OUTPUTS"))
  (shadow 'Frames (find-package "FORESIGHT_OUTPUTS")))
(unless (find-package "FORESIGHT_OUTPUTS::FRAMES")
  (make-package "FORESIGHT_OUTPUTS::FRAMES"))

(in-package "ROS")
;;//! \htmlinclude Frames.msg.html


(defclass foresight_outputs::Frames
  :super ros::object
  :slots (_FrameIndex _FrameTime _obstacles_array ))

(defmethod foresight_outputs::Frames
  (:init
   (&key
    ((:FrameIndex __FrameIndex) 0)
    ((:FrameTime __FrameTime) 0.0)
    ((:obstacles_array __obstacles_array) ())
    )
   (send-super :init)
   (setq _FrameIndex (round __FrameIndex))
   (setq _FrameTime (float __FrameTime))
   (setq _obstacles_array __obstacles_array)
   self)
  (:FrameIndex
   (&optional __FrameIndex)
   (if __FrameIndex (setq _FrameIndex __FrameIndex)) _FrameIndex)
  (:FrameTime
   (&optional __FrameTime)
   (if __FrameTime (setq _FrameTime __FrameTime)) _FrameTime)
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
    ;; foresight_outputs/Obstacle[] _obstacles_array
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
     ;; foresight_outputs/Obstacle[] _obstacles_array
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
   ;; foresight_outputs/Obstacle[] _obstacles_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles_array (let (r) (dotimes (i n) (push (instance foresight_outputs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get foresight_outputs::Frames :md5sum-) "6dd6fdfb9993038c0bfc63e5d2095638")
(setf (get foresight_outputs::Frames :datatype-) "foresight_outputs/Frames")
(setf (get foresight_outputs::Frames :definition-)
      "#Frames field 
uint32 FrameIndex
float64 FrameTime
Obstacle[] obstacles_array

================================================================================
MSG: foresight_outputs/Obstacle
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
MSG: foresight_outputs/BoundBox
#BoundBox field
float32 BottomRightX
float32 BottomRightY
float32 TopLeftX
float32 TopLeftY

")



(provide :foresight_outputs/Frames "6dd6fdfb9993038c0bfc63e5d2095638")


