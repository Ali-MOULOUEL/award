;; Auto-generated. Do not edit!


(when (boundp 'rds_anticollision::error)
  (if (not (find-package "RDS_ANTICOLLISION"))
    (make-package "RDS_ANTICOLLISION"))
  (shadow 'error (find-package "RDS_ANTICOLLISION")))
(unless (find-package "RDS_ANTICOLLISION::ERROR")
  (make-package "RDS_ANTICOLLISION::ERROR"))

(in-package "ROS")
;;//! \htmlinclude error.msg.html


(defclass rds_anticollision::error
  :super ros::object
  :slots (_category _value ))

(defmethod rds_anticollision::error
  (:init
   (&key
    ((:category __category) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _category (round __category))
   (setq _value (round __value))
   self)
  (:category
   (&optional __category)
   (if __category (setq _category __category)) _category)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint32 _category
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _category
       (write-long _category s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _category
     (setq _category (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_anticollision::error :md5sum-) "68f1abf75ea05c1c908b73319245e161")
(setf (get rds_anticollision::error :datatype-) "rds_anticollision/error")
(setf (get rds_anticollision::error :definition-)
      "# Generic error
# Value field equals 0 means no error (whatever category is set to)
uint32 category
int32 value

")



(provide :rds_anticollision/error "68f1abf75ea05c1c908b73319245e161")


