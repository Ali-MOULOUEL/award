SensorMsgHeader Header

float32 CurrentYawAngle             #current mounting yaw angle [rad], range -3.14159;3.14159 
float32 EgoVelocity                 #velocity of ego vehicle, range -150;150 [m/s]
float32 EgoYawRate                  #yaw rate of ego vehicle [rad/s], range -4;4
uint32 NofUsedObjects               #number of available objects
RadarObject[] RadarObjectArray 
uint32 ExternalSensorID             #Reference to the external Sensor ID
ObjProvidedKinematicStates KinematicState #indication which reference the kinematic states are refering
