; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude RadarObjectList.msg.html

(cl:defclass <RadarObjectList> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type rds_conti_radar_object_list_msgs-msg:SensorMsgHeader
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:SensorMsgHeader))
   (CurrentYawAngle
    :reader CurrentYawAngle
    :initarg :CurrentYawAngle
    :type cl:float
    :initform 0.0)
   (EgoVelocity
    :reader EgoVelocity
    :initarg :EgoVelocity
    :type cl:float
    :initform 0.0)
   (EgoYawRate
    :reader EgoYawRate
    :initarg :EgoYawRate
    :type cl:float
    :initform 0.0)
   (NofUsedObjects
    :reader NofUsedObjects
    :initarg :NofUsedObjects
    :type cl:integer
    :initform 0)
   (RadarObjectArray
    :reader RadarObjectArray
    :initarg :RadarObjectArray
    :type (cl:vector rds_conti_radar_object_list_msgs-msg:RadarObject)
   :initform (cl:make-array 0 :element-type 'rds_conti_radar_object_list_msgs-msg:RadarObject :initial-element (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:RadarObject)))
   (ExternalSensorID
    :reader ExternalSensorID
    :initarg :ExternalSensorID
    :type cl:integer
    :initform 0)
   (KinematicState
    :reader KinematicState
    :initarg :KinematicState
    :type rds_conti_radar_object_list_msgs-msg:ObjProvidedKinematicStates
    :initform (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:ObjProvidedKinematicStates)))
)

(cl:defclass RadarObjectList (<RadarObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<RadarObjectList> is deprecated: use rds_conti_radar_object_list_msgs-msg:RadarObjectList instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:Header-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'CurrentYawAngle-val :lambda-list '(m))
(cl:defmethod CurrentYawAngle-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:CurrentYawAngle-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:CurrentYawAngle instead.")
  (CurrentYawAngle m))

(cl:ensure-generic-function 'EgoVelocity-val :lambda-list '(m))
(cl:defmethod EgoVelocity-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:EgoVelocity-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:EgoVelocity instead.")
  (EgoVelocity m))

(cl:ensure-generic-function 'EgoYawRate-val :lambda-list '(m))
(cl:defmethod EgoYawRate-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:EgoYawRate-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:EgoYawRate instead.")
  (EgoYawRate m))

(cl:ensure-generic-function 'NofUsedObjects-val :lambda-list '(m))
(cl:defmethod NofUsedObjects-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:NofUsedObjects-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:NofUsedObjects instead.")
  (NofUsedObjects m))

(cl:ensure-generic-function 'RadarObjectArray-val :lambda-list '(m))
(cl:defmethod RadarObjectArray-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:RadarObjectArray-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:RadarObjectArray instead.")
  (RadarObjectArray m))

(cl:ensure-generic-function 'ExternalSensorID-val :lambda-list '(m))
(cl:defmethod ExternalSensorID-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ExternalSensorID-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ExternalSensorID instead.")
  (ExternalSensorID m))

(cl:ensure-generic-function 'KinematicState-val :lambda-list '(m))
(cl:defmethod KinematicState-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:KinematicState-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:KinematicState instead.")
  (KinematicState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarObjectList>) ostream)
  "Serializes a message object of type '<RadarObjectList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'CurrentYawAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'EgoVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'EgoYawRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'NofUsedObjects)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'NofUsedObjects)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'NofUsedObjects)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'NofUsedObjects)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'RadarObjectArray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'RadarObjectArray))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ExternalSensorID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ExternalSensorID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ExternalSensorID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ExternalSensorID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'KinematicState) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarObjectList>) istream)
  "Deserializes a message object of type '<RadarObjectList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CurrentYawAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EgoVelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EgoYawRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'NofUsedObjects)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'NofUsedObjects)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'NofUsedObjects)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'NofUsedObjects)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'RadarObjectArray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'RadarObjectArray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rds_conti_radar_object_list_msgs-msg:RadarObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ExternalSensorID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ExternalSensorID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ExternalSensorID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ExternalSensorID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'KinematicState) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarObjectList>)))
  "Returns string type for a message object of type '<RadarObjectList>"
  "rds_conti_radar_object_list_msgs/RadarObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarObjectList)))
  "Returns string type for a message object of type 'RadarObjectList"
  "rds_conti_radar_object_list_msgs/RadarObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarObjectList>)))
  "Returns md5sum for a message object of type '<RadarObjectList>"
  "7f981a9cd2dc8a68e05581fae97c445d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarObjectList)))
  "Returns md5sum for a message object of type 'RadarObjectList"
  "7f981a9cd2dc8a68e05581fae97c445d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarObjectList>)))
  "Returns full string definition for message of type '<RadarObjectList>"
  (cl:format cl:nil "SensorMsgHeader Header~%~%float32 CurrentYawAngle             #current mounting yaw angle [rad], range -3.14159;3.14159 ~%float32 EgoVelocity                 #velocity of ego vehicle, range -150;150 [m/s]~%float32 EgoYawRate                  #yaw rate of ego vehicle [rad/s], range -4;4~%uint32 NofUsedObjects               #number of available objects~%RadarObject[] RadarObjectArray ~%uint32 ExternalSensorID             #Reference to the external Sensor ID~%ObjProvidedKinematicStates KinematicState #indication which reference the kinematic states are refering~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/SensorMsgHeader~%#SensorMsgHeader fields~%MsgHeader CommonHeader~%uint32 SensorId             #sensor ID~%SignalStatus SignalStatus   #status of the signals in the data packet~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/MsgHeader~%#MsgHeader fields~%uint32 Seq          #sequence ID: consecutively increasing ID~%Time stamp~%TimeStampSource Timestamp_source~%TimeStampSyncState TimeStamp_sync_state~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/Time~%#Time fields~%uint32 Sec~%uint32 Nsec ~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSource~%#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState~%#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/SignalStatus~%#SensorMsgHeader SignalStatus field~%uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0~%uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1~%uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2~%~%uint8 SignalStatus~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/RadarObject~%#RadarObject fields~%uint32 ObjId                #object ID~%uint32 InternalId           #object ID in internal object list~%float32 DistX               #x-position in Carthesian object coordiante [m], range -200;200~%float32 DistY               #y-position in Carthesian object coordiante [m], range -200;200~%float32 VrelX               #relative velocity in x-direction [m/s], range -400;400~%float32 VrelY               #relative velocity in y-direction [m/s], range -400;400~%float32 ArelX               #relative acceleration in x-direction [m/s²], range -50;50~%float32 ArelY               #relative acceleration in y-direction [m/s²], range -50;50~%float32 DistXStd            #standard deviation of x-position [m], range 0;30~%float32 DistYStd            #standard deviation of y-position [m], range 0;30~%float32 VrelXStd            #standard deviation of relative velocity in x-direction [m/s], range 0;30~%float32 VrelYStd            #standard deviation of relative velocity in y-direction [m/s], range 0;30~%float32 ArelXStd            #standard deviation of relative acceleration in x-direction [m/s²], range 0;30~%float32 ArelYStd            #standard deviation of relative acceleration in y-direction [m/s²], range 0;30~%float32 LDeltaX_left        #x-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaX_mid~%float32 LDeltaX_right~%float32 LDeltaY_left        #y-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaY_mid~%float32 LDeltaY_right~%LDeltaQual LDeltaQual~%float32 RCS                 #object RCS [dBm²], range -100;100 ~%float32 ProbOfExistence     #probability of existance, range 0;1~%uint32 LifeCycles           #number of life cycles, range 0;65534~%DynamicProperty DynamicProperty~%ObjState ObjState~%bool[] ObjMeasuredSources     #statement about which sensor has perceived/measured an object in the current cycle (bitfield: first bit corresponds to sensor 1, etc...): is true if object is perceived by the corresponding sensor~%float32 VabsX               #absolute velocity in x-direction [m/s]~%float32 VabsY               #absolute velocity in y-direction [m/s]~%float32 AabsX               #absolute acceleration in x-direction [m/s²], range -50;50~%float32 AabsY               #absolute acceleration in y-direction [m/s²], range -50;50~%float32 VabsXStd            #standard deviation of absolute velocity in x-direction [m/s], range 0;30~%float32 VabsYStd            #standard deviation of absolute velocity in y-direction [m/s], range 0;30~%float32 AabsXStd            #standard deviation of absolute acceleration in x-direction [m/s²], range 0;30~%float32 AabsYStd            #standard deviation of absolute acceleration in y-direction [m/s²], range 0;30~%float32 Orientation         #relative orientation [rad] between target and ego, CCW positive~%float32 OrientationStd      #standard deviation of relative orientation [rad] between target and ego, CCW positive~%~%~%~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/LDeltaQual~%#RadarObject LDeltaQual field : Quality of OBB distances~%uint8 LDELTAQUAL_ALL_INVALID = 0~%uint8 LDELTAQUAL_LEFT_VALID =1~%uint8 LDELTAQUAL_MID_VALID = 2~%uint8 LDELTAQUAL_LEFT_MID_VALID = 3~%uint8 LDELTAQUAL_RIGHT_VALID = 4~%uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5~%uint8 LDELTAQUAL_RIGHT_MID_VALID = 6~%uint8 LDELTAQUAL_ALL_VALID = 7~%~%uint8 LDeltaQual~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/DynamicProperty~%#RadarObject DynamicProperty field~%uint8 DYNAMICPROPERTY_MOVING = 0~%uint8 DYNAMICPROPERTY_STATIONARY = 1~%uint8 DYNAMICPROPERTY_ONCOMING = 2~%uint8 DYNAMICPROPERTY_UNKNOWN = 3~%~%uint8 DynamicProperty~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/ObjState~%#Radarobject ObjState field~%uint8 OBJSTATE_DELETED = 0~%uint8 OBJSTATE_NEW = 1~%uint8 OBJSTATE_MEASURED = 2~%uint8 OBJSTATE_PREDICTED = 3~%~%uint8 ObjState~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates~%#Object kinematic state~%uint8 KINEMATICSTATE_RELATIVE = 0~%uint8 KINEMATICSTATE_ABSOLUTE = 1~%uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2~%~%uint8 KinematicState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarObjectList)))
  "Returns full string definition for message of type 'RadarObjectList"
  (cl:format cl:nil "SensorMsgHeader Header~%~%float32 CurrentYawAngle             #current mounting yaw angle [rad], range -3.14159;3.14159 ~%float32 EgoVelocity                 #velocity of ego vehicle, range -150;150 [m/s]~%float32 EgoYawRate                  #yaw rate of ego vehicle [rad/s], range -4;4~%uint32 NofUsedObjects               #number of available objects~%RadarObject[] RadarObjectArray ~%uint32 ExternalSensorID             #Reference to the external Sensor ID~%ObjProvidedKinematicStates KinematicState #indication which reference the kinematic states are refering~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/SensorMsgHeader~%#SensorMsgHeader fields~%MsgHeader CommonHeader~%uint32 SensorId             #sensor ID~%SignalStatus SignalStatus   #status of the signals in the data packet~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/MsgHeader~%#MsgHeader fields~%uint32 Seq          #sequence ID: consecutively increasing ID~%Time stamp~%TimeStampSource Timestamp_source~%TimeStampSyncState TimeStamp_sync_state~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/Time~%#Time fields~%uint32 Sec~%uint32 Nsec ~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSource~%#MsgHeader field TimeStampSource~%uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all~%uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor~%uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo~%~%uint8 TimeStampSource ~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState~%#MsgHeader field TimeStampSyncState~%uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all~%uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all~%uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism~%uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism~%~%uint8 TimeStampSyncState~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/SignalStatus~%#SensorMsgHeader SignalStatus field~%uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0~%uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1~%uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2~%~%uint8 SignalStatus~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/RadarObject~%#RadarObject fields~%uint32 ObjId                #object ID~%uint32 InternalId           #object ID in internal object list~%float32 DistX               #x-position in Carthesian object coordiante [m], range -200;200~%float32 DistY               #y-position in Carthesian object coordiante [m], range -200;200~%float32 VrelX               #relative velocity in x-direction [m/s], range -400;400~%float32 VrelY               #relative velocity in y-direction [m/s], range -400;400~%float32 ArelX               #relative acceleration in x-direction [m/s²], range -50;50~%float32 ArelY               #relative acceleration in y-direction [m/s²], range -50;50~%float32 DistXStd            #standard deviation of x-position [m], range 0;30~%float32 DistYStd            #standard deviation of y-position [m], range 0;30~%float32 VrelXStd            #standard deviation of relative velocity in x-direction [m/s], range 0;30~%float32 VrelYStd            #standard deviation of relative velocity in y-direction [m/s], range 0;30~%float32 ArelXStd            #standard deviation of relative acceleration in x-direction [m/s²], range 0;30~%float32 ArelYStd            #standard deviation of relative acceleration in y-direction [m/s²], range 0;30~%float32 LDeltaX_left        #x-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaX_mid~%float32 LDeltaX_right~%float32 LDeltaY_left        #y-distance between reference point and bounding box (left, mid, right) [m], range -50;50~%float32 LDeltaY_mid~%float32 LDeltaY_right~%LDeltaQual LDeltaQual~%float32 RCS                 #object RCS [dBm²], range -100;100 ~%float32 ProbOfExistence     #probability of existance, range 0;1~%uint32 LifeCycles           #number of life cycles, range 0;65534~%DynamicProperty DynamicProperty~%ObjState ObjState~%bool[] ObjMeasuredSources     #statement about which sensor has perceived/measured an object in the current cycle (bitfield: first bit corresponds to sensor 1, etc...): is true if object is perceived by the corresponding sensor~%float32 VabsX               #absolute velocity in x-direction [m/s]~%float32 VabsY               #absolute velocity in y-direction [m/s]~%float32 AabsX               #absolute acceleration in x-direction [m/s²], range -50;50~%float32 AabsY               #absolute acceleration in y-direction [m/s²], range -50;50~%float32 VabsXStd            #standard deviation of absolute velocity in x-direction [m/s], range 0;30~%float32 VabsYStd            #standard deviation of absolute velocity in y-direction [m/s], range 0;30~%float32 AabsXStd            #standard deviation of absolute acceleration in x-direction [m/s²], range 0;30~%float32 AabsYStd            #standard deviation of absolute acceleration in y-direction [m/s²], range 0;30~%float32 Orientation         #relative orientation [rad] between target and ego, CCW positive~%float32 OrientationStd      #standard deviation of relative orientation [rad] between target and ego, CCW positive~%~%~%~%~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/LDeltaQual~%#RadarObject LDeltaQual field : Quality of OBB distances~%uint8 LDELTAQUAL_ALL_INVALID = 0~%uint8 LDELTAQUAL_LEFT_VALID =1~%uint8 LDELTAQUAL_MID_VALID = 2~%uint8 LDELTAQUAL_LEFT_MID_VALID = 3~%uint8 LDELTAQUAL_RIGHT_VALID = 4~%uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5~%uint8 LDELTAQUAL_RIGHT_MID_VALID = 6~%uint8 LDELTAQUAL_ALL_VALID = 7~%~%uint8 LDeltaQual~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/DynamicProperty~%#RadarObject DynamicProperty field~%uint8 DYNAMICPROPERTY_MOVING = 0~%uint8 DYNAMICPROPERTY_STATIONARY = 1~%uint8 DYNAMICPROPERTY_ONCOMING = 2~%uint8 DYNAMICPROPERTY_UNKNOWN = 3~%~%uint8 DynamicProperty~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/ObjState~%#Radarobject ObjState field~%uint8 OBJSTATE_DELETED = 0~%uint8 OBJSTATE_NEW = 1~%uint8 OBJSTATE_MEASURED = 2~%uint8 OBJSTATE_PREDICTED = 3~%~%uint8 ObjState~%================================================================================~%MSG: rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates~%#Object kinematic state~%uint8 KINEMATICSTATE_RELATIVE = 0~%uint8 KINEMATICSTATE_ABSOLUTE = 1~%uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2~%~%uint8 KinematicState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarObjectList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'RadarObjectArray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'KinematicState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarObjectList
    (cl:cons ':Header (Header msg))
    (cl:cons ':CurrentYawAngle (CurrentYawAngle msg))
    (cl:cons ':EgoVelocity (EgoVelocity msg))
    (cl:cons ':EgoYawRate (EgoYawRate msg))
    (cl:cons ':NofUsedObjects (NofUsedObjects msg))
    (cl:cons ':RadarObjectArray (RadarObjectArray msg))
    (cl:cons ':ExternalSensorID (ExternalSensorID msg))
    (cl:cons ':KinematicState (KinematicState msg))
))
