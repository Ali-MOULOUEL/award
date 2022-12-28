;; Auto-generated. Do not edit!


(when (boundp 'rds_anticollision::drive_mode)
  (if (not (find-package "RDS_ANTICOLLISION"))
    (make-package "RDS_ANTICOLLISION"))
  (shadow 'drive_mode (find-package "RDS_ANTICOLLISION")))
(unless (find-package "RDS_ANTICOLLISION::DRIVE_MODE")
  (make-package "RDS_ANTICOLLISION::DRIVE_MODE"))

(in-package "ROS")
;;//! \htmlinclude drive_mode.msg.html


(intern "*DRIVE_MODE_MANUAL*" (find-package "RDS_ANTICOLLISION::DRIVE_MODE"))
(shadow '*DRIVE_MODE_MANUAL* (find-package "RDS_ANTICOLLISION::DRIVE_MODE"))
(defconstant rds_anticollision::drive_mode::*DRIVE_MODE_MANUAL* 0)
(intern "*DRIVE_MODE_AUTOMATIC*" (find-package "RDS_ANTICOLLISION::DRIVE_MODE"))
(shadow '*DRIVE_MODE_AUTOMATIC* (find-package "RDS_ANTICOLLISION::DRIVE_MODE"))
(defconstant rds_anticollision::drive_mode::*DRIVE_MODE_AUTOMATIC* 1)
(intern "*DRIVE_MODE_TELEOPERATION*" (find-package "RDS_ANTICOLLISION::DRIVE_MODE"))
(shadow '*DRIVE_MODE_TELEOPERATION* (find-package "RDS_ANTICOLLISION::DRIVE_MODE"))
(defconstant rds_anticollision::drive_mode::*DRIVE_MODE_TELEOPERATION* 2)

(defun rds_anticollision::drive_mode-to-symbol (const)
  (cond
        ((= const 0) 'rds_anticollision::drive_mode::*DRIVE_MODE_MANUAL*)
        ((= const 1) 'rds_anticollision::drive_mode::*DRIVE_MODE_AUTOMATIC*)
        ((= const 2) 'rds_anticollision::drive_mode::*DRIVE_MODE_TELEOPERATION*)
        (t nil)))

(defclass rds_anticollision::drive_mode
  :super ros::object
  :slots (_drive_mode ))

(defmethod rds_anticollision::drive_mode
  (:init
   (&key
    ((:drive_mode __drive_mode) 0)
    )
   (send-super :init)
   (setq _drive_mode (round __drive_mode))
   self)
  (:drive_mode
   (&optional __drive_mode)
   (if __drive_mode (setq _drive_mode __drive_mode)) _drive_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _drive_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _drive_mode
       (write-byte _drive_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _drive_mode
     (setq _drive_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rds_anticollision::drive_mode :md5sum-) "44ef9e5eb7a21f58b8d93028b36ad4e5")
(setf (get rds_anticollision::drive_mode :datatype-) "rds_anticollision/drive_mode")
(setf (get rds_anticollision::drive_mode :definition-)
      "uint8 DRIVE_MODE_MANUAL = 0 
uint8 DRIVE_MODE_AUTOMATIC = 1
uint8 DRIVE_MODE_TELEOPERATION = 2

uint8 drive_mode

")



(provide :rds_anticollision/drive_mode "44ef9e5eb7a21f58b8d93028b36ad4e5")


