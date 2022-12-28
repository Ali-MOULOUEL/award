;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'ObjProvidedKinematicStates (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES"))

(in-package "ROS")
;;//! \htmlinclude ObjProvidedKinematicStates.msg.html


(intern "*KINEMATICSTATE_RELATIVE*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES"))
(shadow '*KINEMATICSTATE_RELATIVE* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES"))
(defconstant rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates::*KINEMATICSTATE_RELATIVE* 0)
(intern "*KINEMATICSTATE_ABSOLUTE*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES"))
(shadow '*KINEMATICSTATE_ABSOLUTE* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES"))
(defconstant rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates::*KINEMATICSTATE_ABSOLUTE* 1)
(intern "*KINEMATICSTATE_RELATIVE_AND_ABSOLUTE*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES"))
(shadow '*KINEMATICSTATE_RELATIVE_AND_ABSOLUTE* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::OBJPROVIDEDKINEMATICSTATES"))
(defconstant rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates::*KINEMATICSTATE_RELATIVE_AND_ABSOLUTE* 2)

(defun rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates-to-symbol (const)
  (cond
        ((= const 0) 'rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates::*KINEMATICSTATE_RELATIVE*)
        ((= const 1) 'rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates::*KINEMATICSTATE_ABSOLUTE*)
        ((= const 2) 'rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates::*KINEMATICSTATE_RELATIVE_AND_ABSOLUTE*)
        (t nil)))

(defclass rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates
  :super ros::object
  :slots (_KinematicState ))

(defmethod rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates
  (:init
   (&key
    ((:KinematicState __KinematicState) 0)
    )
   (send-super :init)
   (setq _KinematicState (round __KinematicState))
   self)
  (:KinematicState
   (&optional __KinematicState)
   (if __KinematicState (setq _KinematicState __KinematicState)) _KinematicState)
  (:serialization-length
   ()
   (+
    ;; uint8 _KinematicState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _KinematicState
       (write-byte _KinematicState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _KinematicState
     (setq _KinematicState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates :md5sum-) "2f825bc1f0caabbfa32e1215fd872b81")
(setf (get rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates :datatype-) "rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates")
(setf (get rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates :definition-)
      "#Object kinematic state
uint8 KINEMATICSTATE_RELATIVE = 0
uint8 KINEMATICSTATE_ABSOLUTE = 1
uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2

uint8 KinematicState

")



(provide :rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates "2f825bc1f0caabbfa32e1215fd872b81")


