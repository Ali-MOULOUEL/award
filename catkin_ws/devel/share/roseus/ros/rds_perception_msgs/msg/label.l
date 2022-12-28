;; Auto-generated. Do not edit!


(when (boundp 'rds_perception_msgs::label)
  (if (not (find-package "RDS_PERCEPTION_MSGS"))
    (make-package "RDS_PERCEPTION_MSGS"))
  (shadow 'label (find-package "RDS_PERCEPTION_MSGS")))
(unless (find-package "RDS_PERCEPTION_MSGS::LABEL")
  (make-package "RDS_PERCEPTION_MSGS::LABEL"))

(in-package "ROS")
;;//! \htmlinclude label.msg.html


(intern "*LABEL_INVALID*" (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(shadow '*LABEL_INVALID* (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(defconstant rds_perception_msgs::label::*LABEL_INVALID* 0)
(intern "*LABEL_UNKNOWN*" (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(shadow '*LABEL_UNKNOWN* (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(defconstant rds_perception_msgs::label::*LABEL_UNKNOWN* 1)
(intern "*LABEL_CAR*" (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(shadow '*LABEL_CAR* (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(defconstant rds_perception_msgs::label::*LABEL_CAR* 2)
(intern "*LABEL_PEDESTRIAN*" (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(shadow '*LABEL_PEDESTRIAN* (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(defconstant rds_perception_msgs::label::*LABEL_PEDESTRIAN* 3)
(intern "*LABEL_BIKE*" (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(shadow '*LABEL_BIKE* (find-package "RDS_PERCEPTION_MSGS::LABEL"))
(defconstant rds_perception_msgs::label::*LABEL_BIKE* 4)

(defun rds_perception_msgs::label-to-symbol (const)
  (cond
        ((= const 0) 'rds_perception_msgs::label::*LABEL_INVALID*)
        ((= const 1) 'rds_perception_msgs::label::*LABEL_UNKNOWN*)
        ((= const 2) 'rds_perception_msgs::label::*LABEL_CAR*)
        ((= const 3) 'rds_perception_msgs::label::*LABEL_PEDESTRIAN*)
        ((= const 4) 'rds_perception_msgs::label::*LABEL_BIKE*)
        (t nil)))

(defclass rds_perception_msgs::label
  :super ros::object
  :slots (_label ))

(defmethod rds_perception_msgs::label
  (:init
   (&key
    ((:label __label) 0)
    )
   (send-super :init)
   (setq _label (round __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; uint8 _label
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _label
       (write-byte _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _label
     (setq _label (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_perception_msgs::label :md5sum-) "c06ea1895dbf2fba71ea775848eb312a")
(setf (get rds_perception_msgs::label :datatype-) "rds_perception_msgs/label")
(setf (get rds_perception_msgs::label :definition-)
      "# Tracking object type
uint8 LABEL_INVALID = 0
uint8 LABEL_UNKNOWN = 1
uint8 LABEL_CAR = 2
uint8 LABEL_PEDESTRIAN = 3
uint8 LABEL_BIKE = 4

uint8 label

")



(provide :rds_perception_msgs/label "c06ea1895dbf2fba71ea775848eb312a")


