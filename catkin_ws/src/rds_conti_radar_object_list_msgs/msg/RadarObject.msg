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



