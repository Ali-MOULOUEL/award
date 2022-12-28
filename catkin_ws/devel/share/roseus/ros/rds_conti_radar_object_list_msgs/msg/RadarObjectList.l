;; Auto-generated. Do not edit!


(when (boundp 'rds_conti_radar_object_list_msgs::RadarObjectList)
  (if (not (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
    (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS"))
  (shadow 'RadarObjectList (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS")))
(unless (find-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::RADAROBJECTLIST")
  (make-package "RDS_CONTI_RADAR_OBJECT_LIST_MSGS::RADAROBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude RadarObjectList.msg.html


(defclass rds_conti_radar_object_list_msgs::RadarObjectList
  :super ros::object
  :slots (_Header _CurrentYawAngle _EgoVelocity _EgoYawRate _NofUsedObjects _RadarObjectArray _ExternalSensorID _KinematicState ))

(defmethod rds_conti_radar_object_list_msgs::RadarObjectList
  (:init
   (&key
    ((:Header __Header) (instance rds_conti_radar_object_list_msgs::SensorMsgHeader :init))
    ((:CurrentYawAngle __CurrentYawAngle) 0.0)
    ((:EgoVelocity __EgoVelocity) 0.0)
    ((:EgoYawRate __EgoYawRate) 0.0)
    ((:NofUsedObjects __NofUsedObjects) 0)
    ((:RadarObjectArray __RadarObjectArray) ())
    ((:ExternalSensorID __ExternalSensorID) 0)
    ((:KinematicState __KinematicState) (instance rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates :init))
    )
   (send-super :init)
   (setq _Header __Header)
   (setq _CurrentYawAngle (float __CurrentYawAngle))
   (setq _EgoVelocity (float __EgoVelocity))
   (setq _EgoYawRate (float __EgoYawRate))
   (setq _NofUsedObjects (round __NofUsedObjects))
   (setq _RadarObjectArray __RadarObjectArray)
   (setq _ExternalSensorID (round __ExternalSensorID))
   (setq _KinematicState __KinematicState)
   self)
  (:Header
   (&rest __Header)
   (if (keywordp (car __Header))
       (send* _Header __Header)
     (progn
       (if __Header (setq _Header (car __Header)))
       _Header)))
  (:CurrentYawAngle
   (&optional __CurrentYawAngle)
   (if __CurrentYawAngle (setq _CurrentYawAngle __CurrentYawAngle)) _CurrentYawAngle)
  (:EgoVelocity
   (&optional __EgoVelocity)
   (if __EgoVelocity (setq _EgoVelocity __EgoVelocity)) _EgoVelocity)
  (:EgoYawRate
   (&optional __EgoYawRate)
   (if __EgoYawRate (setq _EgoYawRate __EgoYawRate)) _EgoYawRate)
  (:NofUsedObjects
   (&optional __NofUsedObjects)
   (if __NofUsedObjects (setq _NofUsedObjects __NofUsedObjects)) _NofUsedObjects)
  (:RadarObjectArray
   (&rest __RadarObjectArray)
   (if (keywordp (car __RadarObjectArray))
       (send* _RadarObjectArray __RadarObjectArray)
     (progn
       (if __RadarObjectArray (setq _RadarObjectArray (car __RadarObjectArray)))
       _RadarObjectArray)))
  (:ExternalSensorID
   (&optional __ExternalSensorID)
   (if __ExternalSensorID (setq _ExternalSensorID __ExternalSensorID)) _ExternalSensorID)
  (:KinematicState
   (&rest __KinematicState)
   (if (keywordp (car __KinematicState))
       (send* _KinematicState __KinematicState)
     (progn
       (if __KinematicState (setq _KinematicState (car __KinematicState)))
       _KinematicState)))
  (:serialization-length
   ()
   (+
    ;; rds_conti_radar_object_list_msgs/SensorMsgHeader _Header
    (send _Header :serialization-length)
    ;; float32 _CurrentYawAngle
    4
    ;; float32 _EgoVelocity
    4
    ;; float32 _EgoYawRate
    4
    ;; uint32 _NofUsedObjects
    4
    ;; rds_conti_radar_object_list_msgs/RadarObject[] _RadarObjectArray
    (apply #'+ (send-all _RadarObjectArray :serialization-length)) 4
    ;; uint32 _ExternalSensorID
    4
    ;; rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates _KinematicState
    (send _KinematicState :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rds_conti_radar_object_list_msgs/SensorMsgHeader _Header
       (send _Header :serialize s)
     ;; float32 _CurrentYawAngle
       (sys::poke _CurrentYawAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _EgoVelocity
       (sys::poke _EgoVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _EgoYawRate
       (sys::poke _EgoYawRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _NofUsedObjects
       (write-long _NofUsedObjects s)
     ;; rds_conti_radar_object_list_msgs/RadarObject[] _RadarObjectArray
     (write-long (length _RadarObjectArray) s)
     (dolist (elem _RadarObjectArray)
       (send elem :serialize s)
       )
     ;; uint32 _ExternalSensorID
       (write-long _ExternalSensorID s)
     ;; rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates _KinematicState
       (send _KinematicState :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rds_conti_radar_object_list_msgs/SensorMsgHeader _Header
     (send _Header :deserialize buf ptr-) (incf ptr- (send _Header :serialization-length))
   ;; float32 _CurrentYawAngle
     (setq _CurrentYawAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _EgoVelocity
     (setq _EgoVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _EgoYawRate
     (setq _EgoYawRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _NofUsedObjects
     (setq _NofUsedObjects (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rds_conti_radar_object_list_msgs/RadarObject[] _RadarObjectArray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _RadarObjectArray (let (r) (dotimes (i n) (push (instance rds_conti_radar_object_list_msgs::RadarObject :init) r)) r))
     (dolist (elem- _RadarObjectArray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _ExternalSensorID
     (setq _ExternalSensorID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates _KinematicState
     (send _KinematicState :deserialize buf ptr-) (incf ptr- (send _KinematicState :serialization-length))
   ;;
   self)
  )

(setf (get rds_conti_radar_object_list_msgs::RadarObjectList :md5sum-) "7f981a9cd2dc8a68e05581fae97c445d")
(setf (get rds_conti_radar_object_list_msgs::RadarObjectList :datatype-) "rds_conti_radar_object_list_msgs/RadarObjectList")
(setf (get rds_conti_radar_object_list_msgs::RadarObjectList :definition-)
      "SensorMsgHeader Header

float32 CurrentYawAngle             #current mounting yaw angle [rad], range -3.14159;3.14159 
float32 EgoVelocity                 #velocity of ego vehicle, range -150;150 [m/s]
float32 EgoYawRate                  #yaw rate of ego vehicle [rad/s], range -4;4
uint32 NofUsedObjects               #number of available objects
RadarObject[] RadarObjectArray 
uint32 ExternalSensorID             #Reference to the external Sensor ID
ObjProvidedKinematicStates KinematicState #indication which reference the kinematic states are refering

================================================================================
MSG: rds_conti_radar_object_list_msgs/SensorMsgHeader
#SensorMsgHeader fields
MsgHeader CommonHeader
uint32 SensorId             #sensor ID
SignalStatus SignalStatus   #status of the signals in the data packet
================================================================================
MSG: rds_conti_radar_object_list_msgs/MsgHeader
#MsgHeader fields
uint32 Seq          #sequence ID: consecutively increasing ID
Time stamp
TimeStampSource Timestamp_source
TimeStampSyncState TimeStamp_sync_state

================================================================================
MSG: rds_conti_radar_object_list_msgs/Time
#Time fields
uint32 Sec
uint32 Nsec 

================================================================================
MSG: rds_conti_radar_object_list_msgs/TimeStampSource
#MsgHeader field TimeStampSource
uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all
uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor
uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo

uint8 TimeStampSource 
================================================================================
MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState
#MsgHeader field TimeStampSyncState
uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all
uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all
uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism
uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism

uint8 TimeStampSyncState

================================================================================
MSG: rds_conti_radar_object_list_msgs/SignalStatus
#SensorMsgHeader SignalStatus field
uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0
uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1
uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2

uint8 SignalStatus
================================================================================
MSG: rds_conti_radar_object_list_msgs/RadarObject
#RadarObject fields
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
================================================================================
MSG: rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates
#Object kinematic state
uint8 KINEMATICSTATE_RELATIVE = 0
uint8 KINEMATICSTATE_ABSOLUTE = 1
uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2

uint8 KinematicState

")



(provide :rds_conti_radar_object_list_msgs/RadarObjectList "7f981a9cd2dc8a68e05581fae97c445d")


