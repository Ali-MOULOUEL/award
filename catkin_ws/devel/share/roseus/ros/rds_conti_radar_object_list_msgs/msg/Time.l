;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::Time)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'Time (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIME")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIME"))

(in-package "ROS")
;;//! \htmlinclude Time.msg.html


(defclass rds_conti_radar_object_list_msgs::Time
  :super ros::object
  :slots (_Sec _Nsec ))

(defmethod rds_conti_radar_object_list_msgs::Time
  (:init
   (&key
    ((:Sec __Sec) 0)
    ((:Nsec __Nsec) 0)
    )
   (send-super :init)
   (setq _Sec (round __Sec))
   (setq _Nsec (round __Nsec))
   self)
  (:Sec
   (&optional __Sec)
   (if __Sec (setq _Sec __Sec)) _Sec)
  (:Nsec
   (&optional __Nsec)
   (if __Nsec (setq _Nsec __Nsec)) _Nsec)
  (:serialization-length
   ()
   (+
    ;; uint32 _Sec
    4
    ;; uint32 _Nsec
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _Sec
       (write-long _Sec s)
     ;; uint32 _Nsec
       (write-long _Nsec s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _Sec
     (setq _Sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _Nsec
     (setq _Nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::Time :md5sum-) "d25eef3a4dddf6c83752b23dcacfd7aa")
(setf (get rds_conti_radar_object_list_msgs::Time :datatype-) "rds_conti_radar_object_list_msgs/Time")
(setf (get rds_conti_radar_object_list_msgs::Time :definition-)
      "#Time fields
uint32 Sec
uint32 Nsec 

")



(provide :rds_conti_radar_object_list_msgs/Time "d25eef3a4dddf6c83752b23dcacfd7aa")


