;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::TimeStampSource)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'TimeStampSource (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE"))

(in-package "ROS")
;;//! \htmlinclude TimeStampSource.msg.html


(intern "*TIMESTAMPSOURCE_UNKNOWN_SOURCE*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE"))
(shadow '*TIMESTAMPSOURCE_UNKNOWN_SOURCE* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSource::*TIMESTAMPSOURCE_UNKNOWN_SOURCE* 0)
(intern "*TIMESTAMPSOURCE_SENSOR*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE"))
(shadow '*TIMESTAMPSOURCE_SENSOR* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSource::*TIMESTAMPSOURCE_SENSOR* 1)
(intern "*TIMESTAMPSOURCE_ALGO*" (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE"))
(shadow '*TIMESTAMPSOURCE_ALGO* (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::TIMESTAMPSOURCE"))
(defconstant rds_conti_radar_object_list_msgs::TimeStampSource::*TIMESTAMPSOURCE_ALGO* 2)

(defun rds_conti_radar_object_list_msgs::TimeStampSource-to-symbol (const)
  (cond
        ((= const 0) 'rds_conti_radar_object_list_msgs::TimeStampSource::*TIMESTAMPSOURCE_UNKNOWN_SOURCE*)
        ((= const 1) 'rds_conti_radar_object_list_msgs::TimeStampSource::*TIMESTAMPSOURCE_SENSOR*)
        ((= const 2) 'rds_conti_radar_object_list_msgs::TimeStampSource::*TIMESTAMPSOURCE_ALGO*)
        (t nil)))

(defclass rds_conti_radar_object_list_msgs::TimeStampSource
  :super ros::object
  :slots (_TimeStampSource ))

(defmethod rds_conti_radar_object_list_msgs::TimeStampSource
  (:init
   (&key
    ((:TimeStampSource __TimeStampSource) 0)
    )
   (send-super :init)
   (setq _TimeStampSource (round __TimeStampSource))
   self)
  (:TimeStampSource
   (&optional __TimeStampSource)
   (if __TimeStampSource (setq _TimeStampSource __TimeStampSource)) _TimeStampSource)
  (:serialization-length
   ()
   (+
    ;; uint8 _TimeStampSource
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _TimeStampSource
       (write-byte _TimeStampSource s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _TimeStampSource
     (setq _TimeStampSource (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::TimeStampSource :md5sum-) "2fb2d134001df6f67e0a8dc8c7ddc7e6")
(setf (get rds_conti_radar_object_list_msgs::TimeStampSource :datatype-) "rds_conti_radar_object_list_msgs/TimeStampSource")
(setf (get rds_conti_radar_object_list_msgs::TimeStampSource :definition-)
      "#MsgHeader field TimeStampSource
uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all
uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor
uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo

uint8 TimeStampSource 
")



(provide :rds_conti_radar_object_list_msgs/TimeStampSource "2fb2d134001df6f67e0a8dc8c7ddc7e6")


