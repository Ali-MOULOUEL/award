;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::DynamicProperty)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'DynamicProperty (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))

(in-package "ROS")
;;//! \htmlinclude DynamicProperty.msg.html


(intern "*DYNAMICPROPERTY_MOVING*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(shadow '*DYNAMICPROPERTY_MOVING* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(defconstant rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_MOVING* 0)
(intern "*DYNAMICPROPERTY_STATIONARY*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(shadow '*DYNAMICPROPERTY_STATIONARY* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(defconstant rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_STATIONARY* 1)
(intern "*DYNAMICPROPERTY_ONCOMING*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(shadow '*DYNAMICPROPERTY_ONCOMING* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(defconstant rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_ONCOMING* 2)
(intern "*DYNAMICPROPERTY_UNKNOWN*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(shadow '*DYNAMICPROPERTY_UNKNOWN* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::DYNAMICPROPERTY"))
(defconstant rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_UNKNOWN* 3)

(defun rds_conti_radar_object_list_msgs::DynamicProperty-to-symbol (const)
  (cond
        ((= const 0) 'rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_MOVING*)
        ((= const 1) 'rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_STATIONARY*)
        ((= const 2) 'rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_ONCOMING*)
        ((= const 3) 'rds_conti_radar_object_list_msgs::DynamicProperty::*DYNAMICPROPERTY_UNKNOWN*)
        (t nil)))

(defclass rds_conti_radar_object_list_msgs::DynamicProperty
  :super ros::object
  :slots (_DynamicProperty ))

(defmethod rds_conti_radar_object_list_msgs::DynamicProperty
  (:init
   (&key
    ((:DynamicProperty __DynamicProperty) 0)
    )
   (send-super :init)
   (setq _DynamicProperty (round __DynamicProperty))
   self)
  (:DynamicProperty
   (&optional __DynamicProperty)
   (if __DynamicProperty (setq _DynamicProperty __DynamicProperty)) _DynamicProperty)
  (:serialization-length
   ()
   (+
    ;; uint8 _DynamicProperty
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _DynamicProperty
       (write-byte _DynamicProperty s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _DynamicProperty
     (setq _DynamicProperty (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::DynamicProperty :md5sum-) "85d5c392a5c41a0edefab8879d7f3fbf")
(setf (get rds_conti_radar_object_list_msgs::DynamicProperty :datatype-) "rds_conti_radar_object_list_msgs/DynamicProperty")
(setf (get rds_conti_radar_object_list_msgs::DynamicProperty :definition-)
      "#RadarObject DynamicProperty field
uint8 DYNAMICPROPERTY_MOVING = 0
uint8 DYNAMICPROPERTY_STATIONARY = 1
uint8 DYNAMICPROPERTY_ONCOMING = 2
uint8 DYNAMICPROPERTY_UNKNOWN = 3

uint8 DynamicProperty
")



(provide :rds_conti_radar_object_list_msgs/DynamicProperty "85d5c392a5c41a0edefab8879d7f3fbf")


