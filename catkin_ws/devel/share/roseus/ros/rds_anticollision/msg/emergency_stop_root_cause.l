;; Auto-generated. Do not edit!


(when (boundp 'rds_anticollision::emergency_stop_root_cause)
  (if (not (find-package "RDS_ANTICOLLISION"))
    (make-package "RDS_ANTICOLLISION"))
  (shadow 'emergency_stop_root_cause (find-package "RDS_ANTICOLLISION")))
(unless (find-package "RDS_ANTICOLLISION::EMERGENCY_STOP_ROOT_CAUSE")
  (make-package "RDS_ANTICOLLISION::EMERGENCY_STOP_ROOT_CAUSE"))

(in-package "ROS")
;;//! \htmlinclude emergency_stop_root_cause.msg.html


(defclass rds_anticollision::emergency_stop_root_cause
  :super ros::object
  :slots (_causes _speed ))

(defmethod rds_anticollision::emergency_stop_root_cause
  (:init
   (&key
    ((:causes __causes) ())
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _causes __causes)
   (setq _speed (float __speed))
   self)
  (:causes
   (&rest __causes)
   (if (keywordp (car __causes))
       (send* _causes __causes)
     (progn
       (if __causes (setq _causes (car __causes)))
       _causes)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; rds_anticollision/error[] _causes
    (apply #'+ (send-all _causes :serialization-length)) 4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rds_anticollision/error[] _causes
     (write-long (length _causes) s)
     (dolist (elem _causes)
       (send elem :serialize s)
       )
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rds_anticollision/error[] _causes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _causes (let (r) (dotimes (i n) (push (instance rds_anticollision::error :init) r)) r))
     (dolist (elem- _causes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_anticollision::emergency_stop_root_cause :md5sum-) "d411f9af8dac62ba702700d1fd92b8e7")
(setf (get rds_anticollision::emergency_stop_root_cause :datatype-) "rds_anticollision/emergency_stop_root_cause")
(setf (get rds_anticollision::emergency_stop_root_cause :definition-)
      "error[] causes

# Vehicle Context when fired
float32 speed

================================================================================
MSG: rds_anticollision/error
# Generic error
# Value field equals 0 means no error (whatever category is set to)
uint32 category
int32 value

")



(provide :rds_anticollision/emergency_stop_root_cause "d411f9af8dac62ba702700d1fd92b8e7")


