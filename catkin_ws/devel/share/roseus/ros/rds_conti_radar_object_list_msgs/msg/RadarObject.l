;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::RadarObject)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'RadarObject (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::RADAROBJECT")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::RADAROBJECT"))

(in-package "ROS")
;;//! \htmlinclude RadarObject.msg.html


(defclass rds_conti_radar_object_list_msgs::RadarObject
  :super ros::object
  :slots (_ObjId _InternalId _DistX _DistY _VrelX _VrelY _ArelX _ArelY _DistXStd _DistYStd _VrelXStd _VrelYStd _ArelXStd _ArelYStd _LDeltaX_left _LDeltaX_mid _LDeltaX_right _LDeltaY_left _LDeltaY_mid _LDeltaY_right _LDeltaQual _RCS _ProbOfExistence _LifeCycles _DynamicProperty _ObjState _ObjMeasuredSources _VabsX _VabsY _AabsX _AabsY _VabsXStd _VabsYStd _AabsXStd _AabsYStd _Orientation _OrientationStd ))

(defmethod rds_conti_radar_object_list_msgs::RadarObject
  (:init
   (&key
    ((:ObjId __ObjId) 0)
    ((:InternalId __InternalId) 0)
    ((:DistX __DistX) 0.0)
    ((:DistY __DistY) 0.0)
    ((:VrelX __VrelX) 0.0)
    ((:VrelY __VrelY) 0.0)
    ((:ArelX __ArelX) 0.0)
    ((:ArelY __ArelY) 0.0)
    ((:DistXStd __DistXStd) 0.0)
    ((:DistYStd __DistYStd) 0.0)
    ((:VrelXStd __VrelXStd) 0.0)
    ((:VrelYStd __VrelYStd) 0.0)
    ((:ArelXStd __ArelXStd) 0.0)
    ((:ArelYStd __ArelYStd) 0.0)
    ((:LDeltaX_left __LDeltaX_left) 0.0)
    ((:LDeltaX_mid __LDeltaX_mid) 0.0)
    ((:LDeltaX_right __LDeltaX_right) 0.0)
    ((:LDeltaY_left __LDeltaY_left) 0.0)
    ((:LDeltaY_mid __LDeltaY_mid) 0.0)
    ((:LDeltaY_right __LDeltaY_right) 0.0)
    ((:LDeltaQual __LDeltaQual) (instance rds_conti_radar_object_list_msgs::LDeltaQual :init))
    ((:RCS __RCS) 0.0)
    ((:ProbOfExistence __ProbOfExistence) 0.0)
    ((:LifeCycles __LifeCycles) 0)
    ((:DynamicProperty __DynamicProperty) (instance rds_conti_radar_object_list_msgs::DynamicProperty :init))
    ((:ObjState __ObjState) (instance rds_conti_radar_object_list_msgs::ObjState :init))
    ((:ObjMeasuredSources __ObjMeasuredSources) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:VabsX __VabsX) 0.0)
    ((:VabsY __VabsY) 0.0)
    ((:AabsX __AabsX) 0.0)
    ((:AabsY __AabsY) 0.0)
    ((:VabsXStd __VabsXStd) 0.0)
    ((:VabsYStd __VabsYStd) 0.0)
    ((:AabsXStd __AabsXStd) 0.0)
    ((:AabsYStd __AabsYStd) 0.0)
    ((:Orientation __Orientation) 0.0)
    ((:OrientationStd __OrientationStd) 0.0)
    )
   (send-super :init)
   (setq _ObjId (round __ObjId))
   (setq _InternalId (round __InternalId))
   (setq _DistX (float __DistX))
   (setq _DistY (float __DistY))
   (setq _VrelX (float __VrelX))
   (setq _VrelY (float __VrelY))
   (setq _ArelX (float __ArelX))
   (setq _ArelY (float __ArelY))
   (setq _DistXStd (float __DistXStd))
   (setq _DistYStd (float __DistYStd))
   (setq _VrelXStd (float __VrelXStd))
   (setq _VrelYStd (float __VrelYStd))
   (setq _ArelXStd (float __ArelXStd))
   (setq _ArelYStd (float __ArelYStd))
   (setq _LDeltaX_left (float __LDeltaX_left))
   (setq _LDeltaX_mid (float __LDeltaX_mid))
   (setq _LDeltaX_right (float __LDeltaX_right))
   (setq _LDeltaY_left (float __LDeltaY_left))
   (setq _LDeltaY_mid (float __LDeltaY_mid))
   (setq _LDeltaY_right (float __LDeltaY_right))
   (setq _LDeltaQual __LDeltaQual)
   (setq _RCS (float __RCS))
   (setq _ProbOfExistence (float __ProbOfExistence))
   (setq _LifeCycles (round __LifeCycles))
   (setq _DynamicProperty __DynamicProperty)
   (setq _ObjState __ObjState)
   (setq _ObjMeasuredSources __ObjMeasuredSources)
   (setq _VabsX (float __VabsX))
   (setq _VabsY (float __VabsY))
   (setq _AabsX (float __AabsX))
   (setq _AabsY (float __AabsY))
   (setq _VabsXStd (float __VabsXStd))
   (setq _VabsYStd (float __VabsYStd))
   (setq _AabsXStd (float __AabsXStd))
   (setq _AabsYStd (float __AabsYStd))
   (setq _Orientation (float __Orientation))
   (setq _OrientationStd (float __OrientationStd))
   self)
  (:ObjId
   (&optional __ObjId)
   (if __ObjId (setq _ObjId __ObjId)) _ObjId)
  (:InternalId
   (&optional __InternalId)
   (if __InternalId (setq _InternalId __InternalId)) _InternalId)
  (:DistX
   (&optional __DistX)
   (if __DistX (setq _DistX __DistX)) _DistX)
  (:DistY
   (&optional __DistY)
   (if __DistY (setq _DistY __DistY)) _DistY)
  (:VrelX
   (&optional __VrelX)
   (if __VrelX (setq _VrelX __VrelX)) _VrelX)
  (:VrelY
   (&optional __VrelY)
   (if __VrelY (setq _VrelY __VrelY)) _VrelY)
  (:ArelX
   (&optional __ArelX)
   (if __ArelX (setq _ArelX __ArelX)) _ArelX)
  (:ArelY
   (&optional __ArelY)
   (if __ArelY (setq _ArelY __ArelY)) _ArelY)
  (:DistXStd
   (&optional __DistXStd)
   (if __DistXStd (setq _DistXStd __DistXStd)) _DistXStd)
  (:DistYStd
   (&optional __DistYStd)
   (if __DistYStd (setq _DistYStd __DistYStd)) _DistYStd)
  (:VrelXStd
   (&optional __VrelXStd)
   (if __VrelXStd (setq _VrelXStd __VrelXStd)) _VrelXStd)
  (:VrelYStd
   (&optional __VrelYStd)
   (if __VrelYStd (setq _VrelYStd __VrelYStd)) _VrelYStd)
  (:ArelXStd
   (&optional __ArelXStd)
   (if __ArelXStd (setq _ArelXStd __ArelXStd)) _ArelXStd)
  (:ArelYStd
   (&optional __ArelYStd)
   (if __ArelYStd (setq _ArelYStd __ArelYStd)) _ArelYStd)
  (:LDeltaX_left
   (&optional __LDeltaX_left)
   (if __LDeltaX_left (setq _LDeltaX_left __LDeltaX_left)) _LDeltaX_left)
  (:LDeltaX_mid
   (&optional __LDeltaX_mid)
   (if __LDeltaX_mid (setq _LDeltaX_mid __LDeltaX_mid)) _LDeltaX_mid)
  (:LDeltaX_right
   (&optional __LDeltaX_right)
   (if __LDeltaX_right (setq _LDeltaX_right __LDeltaX_right)) _LDeltaX_right)
  (:LDeltaY_left
   (&optional __LDeltaY_left)
   (if __LDeltaY_left (setq _LDeltaY_left __LDeltaY_left)) _LDeltaY_left)
  (:LDeltaY_mid
   (&optional __LDeltaY_mid)
   (if __LDeltaY_mid (setq _LDeltaY_mid __LDeltaY_mid)) _LDeltaY_mid)
  (:LDeltaY_right
   (&optional __LDeltaY_right)
   (if __LDeltaY_right (setq _LDeltaY_right __LDeltaY_right)) _LDeltaY_right)
  (:LDeltaQual
   (&rest __LDeltaQual)
   (if (keywordp (car __LDeltaQual))
       (send* _LDeltaQual __LDeltaQual)
     (progn
       (if __LDeltaQual (setq _LDeltaQual (car __LDeltaQual)))
       _LDeltaQual)))
  (:RCS
   (&optional __RCS)
   (if __RCS (setq _RCS __RCS)) _RCS)
  (:ProbOfExistence
   (&optional __ProbOfExistence)
   (if __ProbOfExistence (setq _ProbOfExistence __ProbOfExistence)) _ProbOfExistence)
  (:LifeCycles
   (&optional __LifeCycles)
   (if __LifeCycles (setq _LifeCycles __LifeCycles)) _LifeCycles)
  (:DynamicProperty
   (&rest __DynamicProperty)
   (if (keywordp (car __DynamicProperty))
       (send* _DynamicProperty __DynamicProperty)
     (progn
       (if __DynamicProperty (setq _DynamicProperty (car __DynamicProperty)))
       _DynamicProperty)))
  (:ObjState
   (&rest __ObjState)
   (if (keywordp (car __ObjState))
       (send* _ObjState __ObjState)
     (progn
       (if __ObjState (setq _ObjState (car __ObjState)))
       _ObjState)))
  (:ObjMeasuredSources
   (&optional __ObjMeasuredSources)
   (if __ObjMeasuredSources (setq _ObjMeasuredSources __ObjMeasuredSources)) _ObjMeasuredSources)
  (:VabsX
   (&optional __VabsX)
   (if __VabsX (setq _VabsX __VabsX)) _VabsX)
  (:VabsY
   (&optional __VabsY)
   (if __VabsY (setq _VabsY __VabsY)) _VabsY)
  (:AabsX
   (&optional __AabsX)
   (if __AabsX (setq _AabsX __AabsX)) _AabsX)
  (:AabsY
   (&optional __AabsY)
   (if __AabsY (setq _AabsY __AabsY)) _AabsY)
  (:VabsXStd
   (&optional __VabsXStd)
   (if __VabsXStd (setq _VabsXStd __VabsXStd)) _VabsXStd)
  (:VabsYStd
   (&optional __VabsYStd)
   (if __VabsYStd (setq _VabsYStd __VabsYStd)) _VabsYStd)
  (:AabsXStd
   (&optional __AabsXStd)
   (if __AabsXStd (setq _AabsXStd __AabsXStd)) _AabsXStd)
  (:AabsYStd
   (&optional __AabsYStd)
   (if __AabsYStd (setq _AabsYStd __AabsYStd)) _AabsYStd)
  (:Orientation
   (&optional __Orientation)
   (if __Orientation (setq _Orientation __Orientation)) _Orientation)
  (:OrientationStd
   (&optional __OrientationStd)
   (if __OrientationStd (setq _OrientationStd __OrientationStd)) _OrientationStd)
  (:serialization-length
   ()
   (+
    ;; uint32 _ObjId
    4
    ;; uint32 _InternalId
    4
    ;; float32 _DistX
    4
    ;; float32 _DistY
    4
    ;; float32 _VrelX
    4
    ;; float32 _VrelY
    4
    ;; float32 _ArelX
    4
    ;; float32 _ArelY
    4
    ;; float32 _DistXStd
    4
    ;; float32 _DistYStd
    4
    ;; float32 _VrelXStd
    4
    ;; float32 _VrelYStd
    4
    ;; float32 _ArelXStd
    4
    ;; float32 _ArelYStd
    4
    ;; float32 _LDeltaX_left
    4
    ;; float32 _LDeltaX_mid
    4
    ;; float32 _LDeltaX_right
    4
    ;; float32 _LDeltaY_left
    4
    ;; float32 _LDeltaY_mid
    4
    ;; float32 _LDeltaY_right
    4
    ;; rds_conti_radar_object_list_msgs/LDeltaQual _LDeltaQual
    (send _LDeltaQual :serialization-length)
    ;; float32 _RCS
    4
    ;; float32 _ProbOfExistence
    4
    ;; uint32 _LifeCycles
    4
    ;; rds_conti_radar_object_list_msgs/DynamicProperty _DynamicProperty
    (send _DynamicProperty :serialization-length)
    ;; rds_conti_radar_object_list_msgs/ObjState _ObjState
    (send _ObjState :serialization-length)
    ;; bool[] _ObjMeasuredSources
    (* 1    (length _ObjMeasuredSources)) 4
    ;; float32 _VabsX
    4
    ;; float32 _VabsY
    4
    ;; float32 _AabsX
    4
    ;; float32 _AabsY
    4
    ;; float32 _VabsXStd
    4
    ;; float32 _VabsYStd
    4
    ;; float32 _AabsXStd
    4
    ;; float32 _AabsYStd
    4
    ;; float32 _Orientation
    4
    ;; float32 _OrientationStd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ObjId
       (write-long _ObjId s)
     ;; uint32 _InternalId
       (write-long _InternalId s)
     ;; float32 _DistX
       (sys::poke _DistX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DistY
       (sys::poke _DistY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VrelX
       (sys::poke _VrelX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VrelY
       (sys::poke _VrelY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ArelX
       (sys::poke _ArelX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ArelY
       (sys::poke _ArelY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DistXStd
       (sys::poke _DistXStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _DistYStd
       (sys::poke _DistYStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VrelXStd
       (sys::poke _VrelXStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VrelYStd
       (sys::poke _VrelYStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ArelXStd
       (sys::poke _ArelXStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ArelYStd
       (sys::poke _ArelYStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LDeltaX_left
       (sys::poke _LDeltaX_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LDeltaX_mid
       (sys::poke _LDeltaX_mid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LDeltaX_right
       (sys::poke _LDeltaX_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LDeltaY_left
       (sys::poke _LDeltaY_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LDeltaY_mid
       (sys::poke _LDeltaY_mid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _LDeltaY_right
       (sys::poke _LDeltaY_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; rds_conti_radar_object_list_msgs/LDeltaQual _LDeltaQual
       (send _LDeltaQual :serialize s)
     ;; float32 _RCS
       (sys::poke _RCS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ProbOfExistence
       (sys::poke _ProbOfExistence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _LifeCycles
       (write-long _LifeCycles s)
     ;; rds_conti_radar_object_list_msgs/DynamicProperty _DynamicProperty
       (send _DynamicProperty :serialize s)
     ;; rds_conti_radar_object_list_msgs/ObjState _ObjState
       (send _ObjState :serialize s)
     ;; bool[] _ObjMeasuredSources
     (write-long (length _ObjMeasuredSources) s)
     (dotimes (i (length _ObjMeasuredSources))
       (if (elt _ObjMeasuredSources i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32 _VabsX
       (sys::poke _VabsX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VabsY
       (sys::poke _VabsY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AabsX
       (sys::poke _AabsX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AabsY
       (sys::poke _AabsY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VabsXStd
       (sys::poke _VabsXStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VabsYStd
       (sys::poke _VabsYStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AabsXStd
       (sys::poke _AabsXStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _AabsYStd
       (sys::poke _AabsYStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Orientation
       (sys::poke _Orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _OrientationStd
       (sys::poke _OrientationStd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ObjId
     (setq _ObjId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _InternalId
     (setq _InternalId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _DistX
     (setq _DistX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DistY
     (setq _DistY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VrelX
     (setq _VrelX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VrelY
     (setq _VrelY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ArelX
     (setq _ArelX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ArelY
     (setq _ArelY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DistXStd
     (setq _DistXStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _DistYStd
     (setq _DistYStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VrelXStd
     (setq _VrelXStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VrelYStd
     (setq _VrelYStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ArelXStd
     (setq _ArelXStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ArelYStd
     (setq _ArelYStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LDeltaX_left
     (setq _LDeltaX_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LDeltaX_mid
     (setq _LDeltaX_mid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LDeltaX_right
     (setq _LDeltaX_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LDeltaY_left
     (setq _LDeltaY_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LDeltaY_mid
     (setq _LDeltaY_mid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _LDeltaY_right
     (setq _LDeltaY_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; rds_conti_radar_object_list_msgs/LDeltaQual _LDeltaQual
     (send _LDeltaQual :deserialize buf ptr-) (incf ptr- (send _LDeltaQual :serialization-length))
   ;; float32 _RCS
     (setq _RCS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ProbOfExistence
     (setq _ProbOfExistence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _LifeCycles
     (setq _LifeCycles (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rds_conti_radar_object_list_msgs/DynamicProperty _DynamicProperty
     (send _DynamicProperty :deserialize buf ptr-) (incf ptr- (send _DynamicProperty :serialization-length))
   ;; rds_conti_radar_object_list_msgs/ObjState _ObjState
     (send _ObjState :deserialize buf ptr-) (incf ptr- (send _ObjState :serialization-length))
   ;; bool[] _ObjMeasuredSources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ObjMeasuredSources (make-list n))
     (dotimes (i n)
     (setf (elt _ObjMeasuredSources i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float32 _VabsX
     (setq _VabsX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VabsY
     (setq _VabsY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AabsX
     (setq _AabsX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AabsY
     (setq _AabsY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VabsXStd
     (setq _VabsXStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VabsYStd
     (setq _VabsYStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AabsXStd
     (setq _AabsXStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _AabsYStd
     (setq _AabsYStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Orientation
     (setq _Orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _OrientationStd
     (setq _OrientationStd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::RadarObject :md5sum-) "0dc10eaa39f2fdbe9b9bb01a0ae55d98")
(setf (get rds_conti_radar_object_list_msgs::RadarObject :datatype-) "rds_conti_radar_object_list_msgs/RadarObject")
(setf (get rds_conti_radar_object_list_msgs::RadarObject :definition-)
      "#RadarObject fields
uint32 ObjId                #object ID
uint32 InternalId           #object ID in internal object list
float32 DistX               #x-position in Carthesian object coordiante [m], range -200;200
float32 DistY               #y-position in Carthesian object coordiante [m], range -200;200
float32 VrelX               #relative velocity in x-direction [m/s], range -400;400
float32 VrelY               #relative velocity in y-direction [m/s], range -400;400
float32 ArelX               #relative acceleration in x-direction [m/s²], range -50;50
float32 ArelY               #relative acceleration in y-direction [m/s²], range -50;50
float32 DistXStd            #standard deviation of x-position [m], range 0;30
float32 DistYStd            #standard deviation of y-position [m], range 0;30
float32 VrelXStd            #standard deviation of relative velocity in x-direction [m/s], range 0;30
float32 VrelYStd            #standard deviation of relative velocity in y-direction [m/s], range 0;30
float32 ArelXStd            #standard deviation of relative acceleration in x-direction [m/s²], range 0;30
float32 ArelYStd            #standard deviation of relative acceleration in y-direction [m/s²], range 0;30
float32 LDeltaX_left        #x-distance between reference point and bounding box (left, mid, right) [m], range -50;50
float32 LDeltaX_mid
float32 LDeltaX_right
float32 LDeltaY_left        #y-distance between reference point and bounding box (left, mid, right) [m], range -50;50
float32 LDeltaY_mid
float32 LDeltaY_right
LDeltaQual LDeltaQual
float32 RCS                 #object RCS [dBm²], range -100;100 
float32 ProbOfExistence     #probability of existance, range 0;1
uint32 LifeCycles           #number of life cycles, range 0;65534
DynamicProperty DynamicProperty
ObjState ObjState
bool[] ObjMeasuredSources     #statement about which sensor has perceived/measured an object in the current cycle (bitfield: first bit corresponds to sensor 1, etc...): is true if object is perceived by the corresponding sensor
float32 VabsX               #absolute velocity in x-direction [m/s]
float32 VabsY               #absolute velocity in y-direction [m/s]
float32 AabsX               #absolute acceleration in x-direction [m/s²], range -50;50
float32 AabsY               #absolute acceleration in y-direction [m/s²], range -50;50
float32 VabsXStd            #standard deviation of absolute velocity in x-direction [m/s], range 0;30
float32 VabsYStd            #standard deviation of absolute velocity in y-direction [m/s], range 0;30
float32 AabsXStd            #standard deviation of absolute acceleration in x-direction [m/s²], range 0;30
float32 AabsYStd            #standard deviation of absolute acceleration in y-direction [m/s²], range 0;30
float32 Orientation         #relative orientation [rad] between target and ego, CCW positive
float32 OrientationStd      #standard deviation of relative orientation [rad] between target and ego, CCW positive




================================================================================
MSG: rds_conti_radar_object_list_msgs/LDeltaQual
#RadarObject LDeltaQual field : Quality of OBB distances
uint8 LDELTAQUAL_ALL_INVALID = 0
uint8 LDELTAQUAL_LEFT_VALID =1
uint8 LDELTAQUAL_MID_VALID = 2
uint8 LDELTAQUAL_LEFT_MID_VALID = 3
uint8 LDELTAQUAL_RIGHT_VALID = 4
uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5
uint8 LDELTAQUAL_RIGHT_MID_VALID = 6
uint8 LDELTAQUAL_ALL_VALID = 7

uint8 LDeltaQual
================================================================================
MSG: rds_conti_radar_object_list_msgs/DynamicProperty
#RadarObject DynamicProperty field
uint8 DYNAMICPROPERTY_MOVING = 0
uint8 DYNAMICPROPERTY_STATIONARY = 1
uint8 DYNAMICPROPERTY_ONCOMING = 2
uint8 DYNAMICPROPERTY_UNKNOWN = 3

uint8 DynamicProperty
================================================================================
MSG: rds_conti_radar_object_list_msgs/ObjState
#Radarobject ObjState field
uint8 OBJSTATE_DELETED = 0
uint8 OBJSTATE_NEW = 1
uint8 OBJSTATE_MEASURED = 2
uint8 OBJSTATE_PREDICTED = 3

uint8 ObjState
")



(provide :rds_conti_radar_object_list_msgs/RadarObject "0dc10eaa39f2fdbe9b9bb01a0ae55d98")


