;; Auto-generated. Do not edit!


(when (boundp 'rds_foresight_camera_object_list_msgs::BoundBox)
  (if (not (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS"))
    (make-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS"))
  (shadow 'BoundBox (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS::BOUNDBOX")
  (make-package "RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS::BOUNDBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundBox.msg.html


(defclass rds_foresight_camera_object_list_msgs::BoundBox
  :super ros::object
  :slots (_BottomRightX _BottomRightY _TopLeftX _TopLeftY ))

(defmethod rds_foresight_camera_object_list_msgs::BoundBox
  (:init
   (&key
    ((:BottomRightX __BottomRightX) 0.0)
    ((:BottomRightY __BottomRightY) 0.0)
    ((:TopLeftX __TopLeftX) 0.0)
    ((:TopLeftY __TopLeftY) 0.0)
    )
   (send-super :init)
   (setq _BottomRightX (float __BottomRightX))
   (setq _BottomRightY (float __BottomRightY))
   (setq _TopLeftX (float __TopLeftX))
   (setq _TopLeftY (float __TopLeftY))
   self)
  (:BottomRightX
   (&optional __BottomRightX)
   (if __BottomRightX (setq _BottomRightX __BottomRightX)) _BottomRightX)
  (:BottomRightY
   (&optional __BottomRightY)
   (if __BottomRightY (setq _BottomRightY __BottomRightY)) _BottomRightY)
  (:TopLeftX
   (&optional __TopLeftX)
   (if __TopLeftX (setq _TopLeftX __TopLeftX)) _TopLeftX)
  (:TopLeftY
   (&optional __TopLeftY)
   (if __TopLeftY (setq _TopLeftY __TopLeftY)) _TopLeftY)
  (:serialization-length
   ()
   (+
    ;; float32 _BottomRightX
    4
    ;; float32 _BottomRightY
    4
    ;; float32 _TopLeftX
    4
    ;; float32 _TopLeftY
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _BottomRightX
       (sys::poke _BottomRightX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _BottomRightY
       (sys::poke _BottomRightY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TopLeftX
       (sys::poke _TopLeftX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TopLeftY
       (sys::poke _TopLeftY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _BottomRightX
     (setq _BottomRightX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _BottomRightY
     (setq _BottomRightY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TopLeftX
     (setq _TopLeftX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TopLeftY
     (setq _TopLeftY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_foresight_camera_object_list_msgs::BoundBox :md5sum-) "d17ab06cbfb1e620b89068c14f0e9d84")
(setf (get rds_foresight_camera_object_list_msgs::BoundBox :datatype-) "rds_foresight_camera_object_list_msgs/BoundBox")
(setf (get rds_foresight_camera_object_list_msgs::BoundBox :definition-)
      "#BoundBox field
float32 BottomRightX
float32 BottomRightY
float32 TopLeftX
float32 TopLeftY

")



(provide :rds_foresight_camera_object_list_msgs/BoundBox "d17ab06cbfb1e620b89068c14f0e9d84")


