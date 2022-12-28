;; Auto-generated. Do not edit!


(when (boundp 'rds_perception_msgs::extent)
  (if (not (find-package "RDS_PERCEPTION_MSGS"))
    (make-package "RDS_PERCEPTION_MSGS"))
  (shadow 'extent (find-package "RDS_PERCEPTION_MSGS")))
(unless (find-package "RDS_PERCEPTION_MSGS::EXTENT")
  (make-package "RDS_PERCEPTION_MSGS::EXTENT"))

(in-package "ROS")
;;//! \htmlinclude extent.msg.html


(intern "*EXTENT_ELLIPSE*" (find-package "RDS_PERCEPTION_MSGS::EXTENT"))
(shadow '*EXTENT_ELLIPSE* (find-package "RDS_PERCEPTION_MSGS::EXTENT"))
(defconstant rds_perception_msgs::extent::*EXTENT_ELLIPSE* 0)
(intern "*EXTENT_OBB*" (find-package "RDS_PERCEPTION_MSGS::EXTENT"))
(shadow '*EXTENT_OBB* (find-package "RDS_PERCEPTION_MSGS::EXTENT"))
(defconstant rds_perception_msgs::extent::*EXTENT_OBB* 1)

(defun rds_perception_msgs::extent-to-symbol (const)
  (cond
        ((= const 0) 'rds_perception_msgs::extent::*EXTENT_ELLIPSE*)
        ((= const 1) 'rds_perception_msgs::extent::*EXTENT_OBB*)
        (t nil)))

(defclass rds_perception_msgs::extent
  :super ros::object
  :slots (_extent ))

(defmethod rds_perception_msgs::extent
  (:init
   (&key
    ((:extent __extent) 0)
    )
   (send-super :init)
   (setq _extent (round __extent))
   self)
  (:extent
   (&optional __extent)
   (if __extent (setq _extent __extent)) _extent)
  (:serialization-length
   ()
   (+
    ;; uint8 _extent
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _extent
       (write-byte _extent s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _extent
     (setq _extent (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_perception_msgs::extent :md5sum-) "54d45419b8a9fa808fd73d0379c42304")
(setf (get rds_perception_msgs::extent :datatype-) "rds_perception_msgs/extent")
(setf (get rds_perception_msgs::extent :definition-)
      "# Tracking extent type
uint8 EXTENT_ELLIPSE = 0
uint8 EXTENT_OBB = 1

uint8 extent

")



(provide :rds_perception_msgs/extent "54d45419b8a9fa808fd73d0379c42304")


