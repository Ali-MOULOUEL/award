;; Auto-generated. Do not edit!


(when (boundp 'nav_ross::nav_msg)
  (if (not (find-package "NAV_ROSS"))
    (make-package "NAV_ROSS"))
  (shadow 'nav_msg (find-package "NAV_ROSS")))
(unless (find-package "NAV_ROSS::NAV_MSG")
  (make-package "NAV_ROSS::NAV_MSG"))

(in-package "ROS")
;;//! \htmlinclude nav_msg.msg.html


(defclass nav_ross::nav_msg
  :super ros::object
  :slots (_range_resolution _AzimuthSamples _EncoderSize _BinSize _RangeInBins _ExpectedRotationRate ))

(defmethod nav_ross::nav_msg
  (:init
   (&key
    ((:range_resolution __range_resolution) 0.0)
    ((:AzimuthSamples __AzimuthSamples) 0)
    ((:EncoderSize __EncoderSize) 0)
    ((:BinSize __BinSize) 0)
    ((:RangeInBins __RangeInBins) 0)
    ((:ExpectedRotationRate __ExpectedRotationRate) 0)
    )
   (send-super :init)
   (setq _range_resolution (float __range_resolution))
   (setq _AzimuthSamples (round __AzimuthSamples))
   (setq _EncoderSize (round __EncoderSize))
   (setq _BinSize (round __BinSize))
   (setq _RangeInBins (round __RangeInBins))
   (setq _ExpectedRotationRate (round __ExpectedRotationRate))
   self)
  (:range_resolution
   (&optional __range_resolution)
   (if __range_resolution (setq _range_resolution __range_resolution)) _range_resolution)
  (:AzimuthSamples
   (&optional __AzimuthSamples)
   (if __AzimuthSamples (setq _AzimuthSamples __AzimuthSamples)) _AzimuthSamples)
  (:EncoderSize
   (&optional __EncoderSize)
   (if __EncoderSize (setq _EncoderSize __EncoderSize)) _EncoderSize)
  (:BinSize
   (&optional __BinSize)
   (if __BinSize (setq _BinSize __BinSize)) _BinSize)
  (:RangeInBins
   (&optional __RangeInBins)
   (if __RangeInBins (setq _RangeInBins __RangeInBins)) _RangeInBins)
  (:ExpectedRotationRate
   (&optional __ExpectedRotationRate)
   (if __ExpectedRotationRate (setq _ExpectedRotationRate __ExpectedRotationRate)) _ExpectedRotationRate)
  (:serialization-length
   ()
   (+
    ;; float64 _range_resolution
    8
    ;; uint16 _AzimuthSamples
    2
    ;; uint16 _EncoderSize
    2
    ;; uint16 _BinSize
    2
    ;; uint16 _RangeInBins
    2
    ;; uint16 _ExpectedRotationRate
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _range_resolution
       (sys::poke _range_resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _AzimuthSamples
       (write-word _AzimuthSamples s)
     ;; uint16 _EncoderSize
       (write-word _EncoderSize s)
     ;; uint16 _BinSize
       (write-word _BinSize s)
     ;; uint16 _RangeInBins
       (write-word _RangeInBins s)
     ;; uint16 _ExpectedRotationRate
       (write-word _ExpectedRotationRate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _range_resolution
     (setq _range_resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _AzimuthSamples
     (setq _AzimuthSamples (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _EncoderSize
     (setq _EncoderSize (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _BinSize
     (setq _BinSize (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _RangeInBins
     (setq _RangeInBins (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ExpectedRotationRate
     (setq _ExpectedRotationRate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get nav_ross::nav_msg :md5sum-) "18581dec57d2b4d9e4f4a5bc2f5e3e17")
(setf (get nav_ross::nav_msg :datatype-) "nav_ross/nav_msg")
(setf (get nav_ross::nav_msg :definition-)
      "float64 range_resolution
uint16 AzimuthSamples
uint16 EncoderSize
uint16 BinSize
uint16 RangeInBins
uint16 ExpectedRotationRate
")



(provide :nav_ross/nav_msg "18581dec57d2b4d9e4f4a5bc2f5e3e17")


