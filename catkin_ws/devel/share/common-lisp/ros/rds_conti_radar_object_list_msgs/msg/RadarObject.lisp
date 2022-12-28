; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude RadarObject.msg.html

(cl:defclass <RadarObject> (roslisp-msg-protocol:ros-message)
  ((ObjId
    :reader ObjId
    :initarg :ObjId
    :type cl:integer
    :initform 0)
   (InternalId
    :reader InternalId
    :initarg :InternalId
    :type cl:integer
    :initform 0)
   (DistX
    :reader DistX
    :initarg :DistX
    :type cl:float
    :initform 0.0)
   (DistY
    :reader DistY
    :initarg :DistY
    :type cl:float
    :initform 0.0)
   (VrelX
    :reader VrelX
    :initarg :VrelX
    :type cl:float
    :initform 0.0)
   (VrelY
    :reader VrelY
    :initarg :VrelY
    :type cl:float
    :initform 0.0)
   (ArelX
    :reader ArelX
    :initarg :ArelX
    :type cl:float
    :initform 0.0)
   (ArelY
    :reader ArelY
    :initarg :ArelY
    :type cl:float
    :initform 0.0)
   (DistXStd
    :reader DistXStd
    :initarg :DistXStd
    :type cl:float
    :initform 0.0)
   (DistYStd
    :reader DistYStd
    :initarg :DistYStd
    :type cl:float
    :initform 0.0)
   (VrelXStd
    :reader VrelXStd
    :initarg :VrelXStd
    :type cl:float
    :initform 0.0)
   (VrelYStd
    :reader VrelYStd
    :initarg :VrelYStd
    :type cl:float
    :initform 0.0)
   (ArelXStd
    :reader ArelXStd
    :initarg :ArelXStd
    :type cl:float
    :initform 0.0)
   (ArelYStd
    :reader ArelYStd
    :initarg :ArelYStd
    :type cl:float
    :initform 0.0)
   (LDeltaX_left
    :reader LDeltaX_left
    :initarg :LDeltaX_left
    :type cl:float
    :initform 0.0)
   (LDeltaX_mid
    :reader LDeltaX_mid
    :initarg :LDeltaX_mid
    :type cl:float
    :initform 0.0)
   (LDeltaX_right
    :reader LDeltaX_right
    :initarg :LDeltaX_right
    :type cl:float
    :initform 0.0)
   (LDeltaY_left
    :reader LDeltaY_left
    :initarg :LDeltaY_left
    :type cl:float
    :initform 0.0)
   (LDeltaY_mid
    :reader LDeltaY_mid
    :initarg :LDeltaY_mid
    :type cl:float
    :initform 0.0)
   (LDeltaY_right
    :reader LDeltaY_right
    :initarg :LDeltaY_right
    :type cl:float
    :initform 0.0)
   (LDeltaQual
    :reader LDeltaQual
    :initarg :LDeltaQual
    :type rds_conti_radar_object_list_msgs-msg:LDeltaQual
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:LDeltaQual))
   (RCS
    :reader RCS
    :initarg :RCS
    :type cl:float
    :initform 0.0)
   (ProbOfExistence
    :reader ProbOfExistence
    :initarg :ProbOfExistence
    :type cl:float
    :initform 0.0)
   (LifeCycles
    :reader LifeCycles
    :initarg :LifeCycles
    :type cl:integer
    :initform 0)
   (DynamicProperty
    :reader DynamicProperty
    :initarg :DynamicProperty
    :type rds_conti_radar_object_list_msgs-msg:DynamicProperty
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:DynamicProperty))
   (ObjState
    :reader ObjState
    :initarg :ObjState
    :type rds_conti_radar_object_list_msgs-msg:ObjState
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:ObjState))
   (ObjMeasuredSources
    :reader ObjMeasuredSources
    :initarg :ObjMeasuredSources
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (VabsX
    :reader VabsX
    :initarg :VabsX
    :type cl:float
    :initform 0.0)
   (VabsY
    :reader VabsY
    :initarg :VabsY
    :type cl:float
    :initform 0.0)
   (AabsX
    :reader AabsX
    :initarg :AabsX
    :type cl:float
    :initform 0.0)
   (AabsY
    :reader AabsY
    :initarg :AabsY
    :type cl:float
    :initform 0.0)
   (VabsXStd
    :reader VabsXStd
    :initarg :VabsXStd
    :type cl:float
    :initform 0.0)
   (VabsYStd
    :reader VabsYStd
    :initarg :VabsYStd
    :type cl:float
    :initform 0.0)
   (AabsXStd
    :reader AabsXStd
    :initarg :AabsXStd
    :type cl:float
    :initform 0.0)
   (AabsYStd
    :reader AabsYStd
    :initarg :AabsYStd
    :type cl:float
    :initform 0.0)
   (Orientation
    :reader Orientation
    :initarg :Orientation
    :type cl:float
    :initform 0.0)
   (OrientationStd
    :reader OrientationStd
    :initarg :OrientationStd
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarObject (<RadarObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<RadarObject> is deprecated: use rds_conti_radar_object_list_msgs-msg:RadarObject instead.")))

(cl:ensure-generic-function 'ObjId-val :lambda-list '(m))
(cl:defmethod ObjId-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ObjId-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ObjId instead.")
  (ObjId m))

(cl:ensure-generic-function 'InternalId-val :lambda-list '(m))
(cl:defmethod InternalId-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:InternalId-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:InternalId instead.")
  (InternalId m))

(cl:ensure-generic-function 'DistX-val :lambda-list '(m))
(cl:defmethod DistX-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:DistX-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:DistX instead.")
  (DistX m))

(cl:ensure-generic-function 'DistY-val :lambda-list '(m))
(cl:defmethod DistY-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:DistY-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:DistY instead.")
  (DistY m))

(cl:ensure-generic-function 'VrelX-val :lambda-list '(m))
(cl:defmethod VrelX-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VrelX-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VrelX instead.")
  (VrelX m))

(cl:ensure-generic-function 'VrelY-val :lambda-list '(m))
(cl:defmethod VrelY-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VrelY-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VrelY instead.")
  (VrelY m))

(cl:ensure-generic-function 'ArelX-val :lambda-list '(m))
(cl:defmethod ArelX-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ArelX-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ArelX instead.")
  (ArelX m))

(cl:ensure-generic-function 'ArelY-val :lambda-list '(m))
(cl:defmethod ArelY-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ArelY-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ArelY instead.")
  (ArelY m))

(cl:ensure-generic-function 'DistXStd-val :lambda-list '(m))
(cl:defmethod DistXStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:DistXStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:DistXStd instead.")
  (DistXStd m))

(cl:ensure-generic-function 'DistYStd-val :lambda-list '(m))
(cl:defmethod DistYStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:DistYStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:DistYStd instead.")
  (DistYStd m))

(cl:ensure-generic-function 'VrelXStd-val :lambda-list '(m))
(cl:defmethod VrelXStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VrelXStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VrelXStd instead.")
  (VrelXStd m))

(cl:ensure-generic-function 'VrelYStd-val :lambda-list '(m))
(cl:defmethod VrelYStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VrelYStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VrelYStd instead.")
  (VrelYStd m))

(cl:ensure-generic-function 'ArelXStd-val :lambda-list '(m))
(cl:defmethod ArelXStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ArelXStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ArelXStd instead.")
  (ArelXStd m))

(cl:ensure-generic-function 'ArelYStd-val :lambda-list '(m))
(cl:defmethod ArelYStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ArelYStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ArelYStd instead.")
  (ArelYStd m))

(cl:ensure-generic-function 'LDeltaX_left-val :lambda-list '(m))
(cl:defmethod LDeltaX_left-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaX_left-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaX_left instead.")
  (LDeltaX_left m))

(cl:ensure-generic-function 'LDeltaX_mid-val :lambda-list '(m))
(cl:defmethod LDeltaX_mid-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaX_mid-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaX_mid instead.")
  (LDeltaX_mid m))

(cl:ensure-generic-function 'LDeltaX_right-val :lambda-list '(m))
(cl:defmethod LDeltaX_right-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaX_right-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaX_right instead.")
  (LDeltaX_right m))

(cl:ensure-generic-function 'LDeltaY_left-val :lambda-list '(m))
(cl:defmethod LDeltaY_left-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaY_left-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaY_left instead.")
  (LDeltaY_left m))

(cl:ensure-generic-function 'LDeltaY_mid-val :lambda-list '(m))
(cl:defmethod LDeltaY_mid-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaY_mid-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaY_mid instead.")
  (LDeltaY_mid m))

(cl:ensure-generic-function 'LDeltaY_right-val :lambda-list '(m))
(cl:defmethod LDeltaY_right-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaY_right-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaY_right instead.")
  (LDeltaY_right m))

(cl:ensure-generic-function 'LDeltaQual-val :lambda-list '(m))
(cl:defmethod LDeltaQual-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LDeltaQual-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LDeltaQual instead.")
  (LDeltaQual m))

(cl:ensure-generic-function 'RCS-val :lambda-list '(m))
(cl:defmethod RCS-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:RCS-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:RCS instead.")
  (RCS m))

(cl:ensure-generic-function 'ProbOfExistence-val :lambda-list '(m))
(cl:defmethod ProbOfExistence-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ProbOfExistence-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ProbOfExistence instead.")
  (ProbOfExistence m))

(cl:ensure-generic-function 'LifeCycles-val :lambda-list '(m))
(cl:defmethod LifeCycles-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:LifeCycles-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:LifeCycles instead.")
  (LifeCycles m))

(cl:ensure-generic-function 'DynamicProperty-val :lambda-list '(m))
(cl:defmethod DynamicProperty-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:DynamicProperty-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:DynamicProperty instead.")
  (DynamicProperty m))

(cl:ensure-generic-function 'ObjState-val :lambda-list '(m))
(cl:defmethod ObjState-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ObjState-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ObjState instead.")
  (ObjState m))

(cl:ensure-generic-function 'ObjMeasuredSources-val :lambda-list '(m))
(cl:defmethod ObjMeasuredSources-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ObjMeasuredSources-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ObjMeasuredSources instead.")
  (ObjMeasuredSources m))

(cl:ensure-generic-function 'VabsX-val :lambda-list '(m))
(cl:defmethod VabsX-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VabsX-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VabsX instead.")
  (VabsX m))

(cl:ensure-generic-function 'VabsY-val :lambda-list '(m))
(cl:defmethod VabsY-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VabsY-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VabsY instead.")
  (VabsY m))

(cl:ensure-generic-function 'AabsX-val :lambda-list '(m))
(cl:defmethod AabsX-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:AabsX-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:AabsX instead.")
  (AabsX m))

(cl:ensure-generic-function 'AabsY-val :lambda-list '(m))
(cl:defmethod AabsY-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:AabsY-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:AabsY instead.")
  (AabsY m))

(cl:ensure-generic-function 'VabsXStd-val :lambda-list '(m))
(cl:defmethod VabsXStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VabsXStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VabsXStd instead.")
  (VabsXStd m))

(cl:ensure-generic-function 'VabsYStd-val :lambda-list '(m))
(cl:defmethod VabsYStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:VabsYStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:VabsYStd instead.")
  (VabsYStd m))

(cl:ensure-generic-function 'AabsXStd-val :lambda-list '(m))
(cl:defmethod AabsXStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:AabsXStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:AabsXStd instead.")
  (AabsXStd m))

(cl:ensure-generic-function 'AabsYStd-val :lambda-list '(m))
(cl:defmethod AabsYStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:AabsYStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:AabsYStd instead.")
  (AabsYStd m))

(cl:ensure-generic-function 'Orientation-val :lambda-list '(m))
(cl:defmethod Orientation-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:Orientation-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:Orientation instead.")
  (Orientation m))

(cl:ensure-generic-function 'OrientationStd-val :lambda-list '(m))
(cl:defmethod OrientationStd-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:OrientationStd-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:OrientationStd instead.")
  (OrientationStd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarObject>) ostream)
  "Serializes a message object of type '<RadarObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ObjId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ObjId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ObjId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ObjId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'InternalId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'InternalId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'InternalId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'InternalId)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DistX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DistY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VrelX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VrelY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ArelX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ArelY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DistXStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DistYStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VrelXStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VrelYStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ArelXStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ArelYStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LDeltaX_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LDeltaX_mid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LDeltaX_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LDeltaY_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LDeltaY_mid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LDeltaY_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'LDeltaQual) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RCS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ProbOfExistence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LifeCycles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LifeCycles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LifeCycles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LifeCycles)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'DynamicProperty) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ObjState) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ObjMeasuredSources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'ObjMeasuredSources))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VabsX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VabsY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AabsX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AabsY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VabsXStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VabsYStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AabsXStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AabsYStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'OrientationStd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarObject>) istream)
  "Deserializes a message object of type '<RadarObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ObjId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ObjId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ObjId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ObjId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'InternalId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'InternalId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'InternalId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'InternalId)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DistX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DistY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VrelX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VrelY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ArelX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ArelY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DistXStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DistYStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VrelXStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VrelYStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ArelXStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ArelYStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LDeltaX_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LDeltaX_mid) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LDeltaX_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LDeltaY_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LDeltaY_mid) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LDeltaY_right) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'LDeltaQual) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RCS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ProbOfExistence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LifeCycles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LifeCycles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LifeCycles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LifeCycles)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'DynamicProperty) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ObjState) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ObjMeasuredSources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ObjMeasuredSources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VabsX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VabsY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AabsX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AabsY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VabsXStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VabsYStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AabsXStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AabsYStd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'OrientationStd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarObject>)))
  "Returns string type for a message object of type '<RadarObject>"
  "rds_conti_radar_object_list_msgs/RadarObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarObject)))
  "Returns string type for a message object of type 'RadarObject"
  "rds_conti_radar_object_list_msgs/RadarObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarObject>)))
  "Returns md5sum for a message object of type '<RadarObject>"
  "0dc10eaa39f2fdbe9b9bb01a0ae55d98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarObject)))
  "Returns md5sum for a message object of type 'RadarObject"
  "0dc10eaa39f2fdbe9b9bb01a0ae55d98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarObject>)))
  "Returns full string definition for message of type '<RadarObject>"
  (cl:format cl:nil "#RadarObject fields~%uint32 ObjId                #object ID~%uint32 InternalId           #object ID in internal object list~%float32 DistX               #x-position in Carthesian object coordiante [m], range -200;200~%float32 DistY               #y-position in Carthesian object coordiante [m], range -200;200~%float32 VrelX               #relative velocity in x-direction [m/s], range -400;400~%float32 VrelY               #relative velocity in y-direction [m/s], range -400;400~%float32 ArelX               #relative acceleration in x-direction [m/s²], range -50;50~%float32 ArelY               #relative acceleration in y-direction [m/s²], range -50;50~%float32 DistXStd            #standard deviation of x-position [m], range 0;30~%float32 DistYStd            #standard deviation of y-position [m], range 0;30~%float32 VrelXStd            #standard deviation of relative velocity in x-direction [m/s], range 0;30~%float32 VrelYStd            #standard deviation of relative velocity in y-direction [m/s], range 0;30~%float32 ArelXStd            #standard deviation of relative acceleration in x-direction [m/s²], range 0;30~%float32 ArelYStd            #standard deviation of relative acceleration in y-direction [m/s²], range 0;30~%float32 LDeltaX_left        #x-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaX_mid~%float32 LDeltaX_right~%float32 LDeltaY_left        #y-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaY_mid~%float32 LDeltaY_right~%LDeltaQual LDeltaQual~%float32 RCS                 #object RCS [dBm²], range -100;100 ~%float32 ProbOfExistence     #probability of existance, range 0;1~%uint32 LifeCycles           #number of life cycles, range 0;65534~%DynamicProperty DynamicProperty~%ObjState ObjState~%bool[] ObjMeasuredSources     #statement about which sensor has perceived/measured an object in the current cycle (bitfield: first bit corresponds to sensor 1, etc...): is true if object is perceived by the corresponding sensor~%float32 VabsX               #absolute velocity in x-direction [m/s]~%float32 VabsY               #absolute velocity in y-direction [m/s]~%float32 AabsX               #absolute acceleration in x-direction [m/s²], range -50;50~%float32 AabsY               #absolute acceleration in y-direction [m/s²], range -50;50~%float32 VabsXStd            #standard deviation of absolute velocity in x-direction [m/s], range 0;30~%float32 VabsYStd            #standard deviation of absolute velocity in y-direction [m/s], range 0;30~%float32 AabsXStd            #standard deviation of absolute acceleration in x-direction [m/s²], range 0;30~%float32 AabsYStd            #standard deviation of absolute acceleration in y-direction [m/s²], range 0;30~%float32 Orientation         #relative orientation [rad] between target and ego, CCW positive~%float32 OrientationStd      #standard deviation of relative orientation [rad] between target and ego, CCW positive~%~%~%~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/LDeltaQual~%#RadarObject LDeltaQual field : Quality of OBB distances~%uint8 LDELTAQUAL_ALL_INVALID = 0~%uint8 LDELTAQUAL_LEFT_VALID =1~%uint8 LDELTAQUAL_MID_VALID = 2~%uint8 LDELTAQUAL_LEFT_MID_VALID = 3~%uint8 LDELTAQUAL_RIGHT_VALID = 4~%uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5~%uint8 LDELTAQUAL_RIGHT_MID_VALID = 6~%uint8 LDELTAQUAL_ALL_VALID = 7~%~%uint8 LDeltaQual~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/DynamicProperty~%#RadarObject DynamicProperty field~%uint8 DYNAMICPROPERTY_MOVING = 0~%uint8 DYNAMICPROPERTY_STATIONARY = 1~%uint8 DYNAMICPROPERTY_ONCOMING = 2~%uint8 DYNAMICPROPERTY_UNKNOWN = 3~%~%uint8 DynamicProperty~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/ObjState~%#Radarobject ObjState field~%uint8 OBJSTATE_DELETED = 0~%uint8 OBJSTATE_NEW = 1~%uint8 OBJSTATE_MEASURED = 2~%uint8 OBJSTATE_PREDICTED = 3~%~%uint8 ObjState~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarObject)))
  "Returns full string definition for message of type 'RadarObject"
  (cl:format cl:nil "#RadarObject fields~%uint32 ObjId                #object ID~%uint32 InternalId           #object ID in internal object list~%float32 DistX               #x-position in Carthesian object coordiante [m], range -200;200~%float32 DistY               #y-position in Carthesian object coordiante [m], range -200;200~%float32 VrelX               #relative velocity in x-direction [m/s], range -400;400~%float32 VrelY               #relative velocity in y-direction [m/s], range -400;400~%float32 ArelX               #relative acceleration in x-direction [m/s²], range -50;50~%float32 ArelY               #relative acceleration in y-direction [m/s²], range -50;50~%float32 DistXStd            #standard deviation of x-position [m], range 0;30~%float32 DistYStd            #standard deviation of y-position [m], range 0;30~%float32 VrelXStd            #standard deviation of relative velocity in x-direction [m/s], range 0;30~%float32 VrelYStd            #standard deviation of relative velocity in y-direction [m/s], range 0;30~%float32 ArelXStd            #standard deviation of relative acceleration in x-direction [m/s²], range 0;30~%float32 ArelYStd            #standard deviation of relative acceleration in y-direction [m/s²], range 0;30~%float32 LDeltaX_left        #x-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaX_mid~%float32 LDeltaX_right~%float32 LDeltaY_left        #y-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaY_mid~%float32 LDeltaY_right~%LDeltaQual LDeltaQual~%float32 RCS                 #object RCS [dBm²], range -100;100 ~%float32 ProbOfExistence     #probability of existance, range 0;1~%uint32 LifeCycles           #number of life cycles, range 0;65534~%DynamicProperty DynamicProperty~%ObjState ObjState~%bool[] ObjMeasuredSources     #statement about which sensor has perceived/measured an object in the current cycle (bitfield: first bit corresponds to sensor 1, etc...): is true if object is perceived by the corresponding sensor~%float32 VabsX               #absolute velocity in x-direction [m/s]~%float32 VabsY               #absolute velocity in y-direction [m/s]~%float32 AabsX               #absolute acceleration in x-direction [m/s²], range -50;50~%float32 AabsY               #absolute acceleration in y-direction [m/s²], range -50;50~%float32 VabsXStd            #standard deviation of absolute velocity in x-direction [m/s], range 0;30~%float32 VabsYStd            #standard deviation of absolute velocity in y-direction [m/s], range 0;30~%float32 AabsXStd            #standard deviation of absolute acceleration in x-direction [m/s²], range 0;30~%float32 AabsYStd            #standard deviation of absolute acceleration in y-direction [m/s²], range 0;30~%float32 Orientation         #relative orientation [rad] between target and ego, CCW positive~%float32 OrientationStd      #standard deviation of relative orientation [rad] between target and ego, CCW positive~%~%~%~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/LDeltaQual~%#RadarObject LDeltaQual field : Quality of OBB distances~%uint8 LDELTAQUAL_ALL_INVALID = 0~%uint8 LDELTAQUAL_LEFT_VALID =1~%uint8 LDELTAQUAL_MID_VALID = 2~%uint8 LDELTAQUAL_LEFT_MID_VALID = 3~%uint8 LDELTAQUAL_RIGHT_VALID = 4~%uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5~%uint8 LDELTAQUAL_RIGHT_MID_VALID = 6~%uint8 LDELTAQUAL_ALL_VALID = 7~%~%uint8 LDeltaQual~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/DynamicProperty~%#RadarObject DynamicProperty field~%uint8 DYNAMICPROPERTY_MOVING = 0~%uint8 DYNAMICPROPERTY_STATIONARY = 1~%uint8 DYNAMICPROPERTY_ONCOMING = 2~%uint8 DYNAMICPROPERTY_UNKNOWN = 3~%~%uint8 DynamicProperty~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/ObjState~%#Radarobject ObjState field~%uint8 OBJSTATE_DELETED = 0~%uint8 OBJSTATE_NEW = 1~%uint8 OBJSTATE_MEASURED = 2~%uint8 OBJSTATE_PREDICTED = 3~%~%uint8 ObjState~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarObject>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'LDeltaQual))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'DynamicProperty))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ObjState))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ObjMeasuredSources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarObject>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarObject
    (cl:cons ':ObjId (ObjId msg))
    (cl:cons ':InternalId (InternalId msg))
    (cl:cons ':DistX (DistX msg))
    (cl:cons ':DistY (DistY msg))
    (cl:cons ':VrelX (VrelX msg))
    (cl:cons ':VrelY (VrelY msg))
    (cl:cons ':ArelX (ArelX msg))
    (cl:cons ':ArelY (ArelY msg))
    (cl:cons ':DistXStd (DistXStd msg))
    (cl:cons ':DistYStd (DistYStd msg))
    (cl:cons ':VrelXStd (VrelXStd msg))
    (cl:cons ':VrelYStd (VrelYStd msg))
    (cl:cons ':ArelXStd (ArelXStd msg))
    (cl:cons ':ArelYStd (ArelYStd msg))
    (cl:cons ':LDeltaX_left (LDeltaX_left msg))
    (cl:cons ':LDeltaX_mid (LDeltaX_mid msg))
    (cl:cons ':LDeltaX_right (LDeltaX_right msg))
    (cl:cons ':LDeltaY_left (LDeltaY_left msg))
    (cl:cons ':LDeltaY_mid (LDeltaY_mid msg))
    (cl:cons ':LDeltaY_right (LDeltaY_right msg))
    (cl:cons ':LDeltaQual (LDeltaQual msg))
    (cl:cons ':RCS (RCS msg))
    (cl:cons ':ProbOfExistence (ProbOfExistence msg))
    (cl:cons ':LifeCycles (LifeCycles msg))
    (cl:cons ':DynamicProperty (DynamicProperty msg))
    (cl:cons ':ObjState (ObjState msg))
    (cl:cons ':ObjMeasuredSources (ObjMeasuredSources msg))
    (cl:cons ':VabsX (VabsX msg))
    (cl:cons ':VabsY (VabsY msg))
    (cl:cons ':AabsX (AabsX msg))
    (cl:cons ':AabsY (AabsY msg))
    (cl:cons ':VabsXStd (VabsXStd msg))
    (cl:cons ':VabsYStd (VabsYStd msg))
    (cl:cons ':AabsXStd (AabsXStd msg))
    (cl:cons ':AabsYStd (AabsYStd msg))
    (cl:cons ':Orientation (Orientation msg))
    (cl:cons ':OrientationStd (OrientationStd msg))
))
