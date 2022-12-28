;; Auto-generated. Do not edit!


(when (boundp 'rds_perception_msgs::IntersectionZone)
  (if (not (find-package "RDS_PERCEPTION_MSGS"))
    (make-package "RDS_PERCEPTION_MSGS"))
  (shadow 'IntersectionZone (find-package "RDS_PERCEPTION_MSGS")))
(unless (find-package "RDS_PERCEPTION_MSGS::INTERSECTIONZONE")
  (make-package "RDS_PERCEPTION_MSGS::INTERSECTIONZONE"))

(in-package "ROS")
;;//! \htmlinclude IntersectionZone.msg.html


(intern "*PROVIDER_PERCEPTION*" (find-package "RDS_PERCEPTION_MSGS::INTERSECTIONZONE"))
(shadow '*PROVIDER_PERCEPTION* (find-package "RDS_PERCEPTION_MSGS::INTERSECTIONZONE"))
(defconstant rds_perception_msgs::IntersectionZone::*PROVIDER_PERCEPTION* 1)
(intern "*PROVIDER_ADS_B*" (find-package "RDS_PERCEPTION_MSGS::INTERSECTIONZONE"))
(shadow '*PROVIDER_ADS_B* (find-package "RDS_PERCEPTION_MSGS::INTERSECTIONZONE"))
(defconstant rds_perception_msgs::IntersectionZone::*PROVIDER_ADS_B* 2)

(defun rds_perception_msgs::IntersectionZone-to-symbol (const)
  (cond
        ((= const 1) 'rds_perception_msgs::IntersectionZone::*PROVIDER_PERCEPTION*)
        ((= const 2) 'rds_perception_msgs::IntersectionZone::*PROVIDER_ADS_B*)
        (t nil)))

(defclass rds_perception_msgs::IntersectionZone
  :super ros::object
  :slots (_provider _ignored_blind_obstacles ))

(defmethod rds_perception_msgs::IntersectionZone
  (:init
   (&key
    ((:provider __provider) 0)
    ((:ignored_blind_obstacles __ignored_blind_obstacles) ())
    )
   (send-super :init)
   (setq _provider (round __provider))
   (setq _ignored_blind_obstacles __ignored_blind_obstacles)
   self)
  (:provider
   (&optional __provider)
   (if __provider (setq _provider __provider)) _provider)
  (:ignored_blind_obstacles
   (&rest __ignored_blind_obstacles)
   (if (keywordp (car __ignored_blind_obstacles))
       (send* _ignored_blind_obstacles __ignored_blind_obstacles)
     (progn
       (if __ignored_blind_obstacles (setq _ignored_blind_obstacles (car __ignored_blind_obstacles)))
       _ignored_blind_obstacles)))
  (:serialization-length
   ()
   (+
    ;; uint8 _provider
    1
    ;; rds_perception_msgs/label[] _ignored_blind_obstacles
    (apply #'+ (send-all _ignored_blind_obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _provider
       (write-byte _provider s)
     ;; rds_perception_msgs/label[] _ignored_blind_obstacles
     (write-long (length _ignored_blind_obstacles) s)
     (dolist (elem _ignored_blind_obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _provider
     (setq _provider (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; rds_perception_msgs/label[] _ignored_blind_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ignored_blind_obstacles (let (r) (dotimes (i n) (push (instance rds_perception_msgs::label :init) r)) r))
     (dolist (elem- _ignored_blind_obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rds_perception_msgs::IntersectionZone :md5sum-) "42dde0da16a1fa71a8c22e5108233e9c")
(setf (get rds_perception_msgs::IntersectionZone :datatype-) "rds_perception_msgs/IntersectionZone")
(setf (get rds_perception_msgs::IntersectionZone :definition-)
      "uint8 PROVIDER_PERCEPTION = 1
uint8 PROVIDER_ADS_B = 2
uint8 provider

#geometry_msgs/Polygon area

# Filled only when provider is perception based
rds_perception_msgs/label[] ignored_blind_obstacles

================================================================================
MSG: rds_perception_msgs/label
# Tracking object type
uint8 LABEL_INVALID = 0
uint8 LABEL_UNKNOWN = 1
uint8 LABEL_CAR = 2
uint8 LABEL_PEDESTRIAN = 3
uint8 LABEL_BIKE = 4

uint8 label

")



(provide :rds_perception_msgs/IntersectionZone "42dde0da16a1fa71a8c22e5108233e9c")


