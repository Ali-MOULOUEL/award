;; Auto-generated. Do not edit!


(when (boundp 'rds_anticollision::msg_vehicle_state_common)
  (if (not (find-package "RDS_ANTICOLLISION"))
    (make-package "RDS_ANTICOLLISION"))
  (shadow 'msg_vehicle_state_common (find-package "RDS_ANTICOLLISION")))
(unless (find-package "RDS_ANTICOLLISION::MSG_VEHICLE_STATE_COMMON")
  (make-package "RDS_ANTICOLLISION::MSG_VEHICLE_STATE_COMMON"))

(in-package "ROS")
;;//! \htmlinclude msg_vehicle_state_common.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rds_anticollision::msg_vehicle_state_common
  :super ros::object
  :slots (_header _drive_mode _motion _emergency_stop_root_causes _errors _warnings _safety_chain_state _controller_status _engagement_ability _start_mission_state ))

(defmethod rds_anticollision::msg_vehicle_state_common
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drive_mode __drive_mode) (instance rds_anticollision::drive_mode :init))
    ((:motion __motion) (instance rds_anticollision::motion :init))
    ((:emergency_stop_root_causes __emergency_stop_root_causes) (instance rds_anticollision::emergency_stop_root_cause :init))
    ((:errors __errors) ())
    ((:warnings __warnings) ())
    ((:safety_chain_state __safety_chain_state) (instance rds_anticollision::safety_chain_state :init))
    ((:controller_status __controller_status) (instance rds_anticollision::ability :init))
    ((:engagement_ability __engagement_ability) (instance rds_anticollision::ability :init))
    ((:start_mission_state __start_mission_state) (instance rds_anticollision::start_mission_state :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drive_mode __drive_mode)
   (setq _motion __motion)
   (setq _emergency_stop_root_causes __emergency_stop_root_causes)
   (setq _errors __errors)
   (setq _warnings __warnings)
   (setq _safety_chain_state __safety_chain_state)
   (setq _controller_status __controller_status)
   (setq _engagement_ability __engagement_ability)
   (setq _start_mission_state __start_mission_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drive_mode
   (&rest __drive_mode)
   (if (keywordp (car __drive_mode))
       (send* _drive_mode __drive_mode)
     (progn
       (if __drive_mode (setq _drive_mode (car __drive_mode)))
       _drive_mode)))
  (:motion
   (&rest __motion)
   (if (keywordp (car __motion))
       (send* _motion __motion)
     (progn
       (if __motion (setq _motion (car __motion)))
       _motion)))
  (:emergency_stop_root_causes
   (&rest __emergency_stop_root_causes)
   (if (keywordp (car __emergency_stop_root_causes))
       (send* _emergency_stop_root_causes __emergency_stop_root_causes)
     (progn
       (if __emergency_stop_root_causes (setq _emergency_stop_root_causes (car __emergency_stop_root_causes)))
       _emergency_stop_root_causes)))
  (:errors
   (&rest __errors)
   (if (keywordp (car __errors))
       (send* _errors __errors)
     (progn
       (if __errors (setq _errors (car __errors)))
       _errors)))
  (:warnings
   (&rest __warnings)
   (if (keywordp (car __warnings))
       (send* _warnings __warnings)
     (progn
       (if __warnings (setq _warnings (car __warnings)))
       _warnings)))
  (:safety_chain_state
   (&rest __safety_chain_state)
   (if (keywordp (car __safety_chain_state))
       (send* _safety_chain_state __safety_chain_state)
     (progn
       (if __safety_chain_state (setq _safety_chain_state (car __safety_chain_state)))
       _safety_chain_state)))
  (:controller_status
   (&rest __controller_status)
   (if (keywordp (car __controller_status))
       (send* _controller_status __controller_status)
     (progn
       (if __controller_status (setq _controller_status (car __controller_status)))
       _controller_status)))
  (:engagement_ability
   (&rest __engagement_ability)
   (if (keywordp (car __engagement_ability))
       (send* _engagement_ability __engagement_ability)
     (progn
       (if __engagement_ability (setq _engagement_ability (car __engagement_ability)))
       _engagement_ability)))
  (:start_mission_state
   (&rest __start_mission_state)
   (if (keywordp (car __start_mission_state))
       (send* _start_mission_state __start_mission_state)
     (progn
       (if __start_mission_state (setq _start_mission_state (car __start_mission_state)))
       _start_mission_state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rds_anticollision/drive_mode _drive_mode
    (send _drive_mode :serialization-length)
    ;; rds_anticollision/motion _motion
    (send _motion :serialization-length)
    ;; rds_anticollision/emergency_stop_root_cause _emergency_stop_root_causes
    (send _emergency_stop_root_causes :serialization-length)
    ;; rds_anticollision/error[] _errors
    (apply #'+ (send-all _errors :serialization-length)) 4
    ;; rds_anticollision/error[] _warnings
    (apply #'+ (send-all _warnings :serialization-length)) 4
    ;; rds_anticollision/safety_chain_state _safety_chain_state
    (send _safety_chain_state :serialization-length)
    ;; rds_anticollision/ability _controller_status
    (send _controller_status :serialization-length)
    ;; rds_anticollision/ability _engagement_ability
    (send _engagement_ability :serialization-length)
    ;; rds_anticollision/start_mission_state _start_mission_state
    (send _start_mission_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rds_anticollision/drive_mode _drive_mode
       (send _drive_mode :serialize s)
     ;; rds_anticollision/motion _motion
       (send _motion :serialize s)
     ;; rds_anticollision/emergency_stop_root_cause _emergency_stop_root_causes
       (send _emergency_stop_root_causes :serialize s)
     ;; rds_anticollision/error[] _errors
     (write-long (length _errors) s)
     (dolist (elem _errors)
       (send elem :serialize s)
       )
     ;; rds_anticollision/error[] _warnings
     (write-long (length _warnings) s)
     (dolist (elem _warnings)
       (send elem :serialize s)
       )
     ;; rds_anticollision/safety_chain_state _safety_chain_state
       (send _safety_chain_state :serialize s)
     ;; rds_anticollision/ability _controller_status
       (send _controller_status :serialize s)
     ;; rds_anticollision/ability _engagement_ability
       (send _engagement_ability :serialize s)
     ;; rds_anticollision/start_mission_state _start_mission_state
       (send _start_mission_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rds_anticollision/drive_mode _drive_mode
     (send _drive_mode :deserialize buf ptr-) (incf ptr- (send _drive_mode :serialization-length))
   ;; rds_anticollision/motion _motion
     (send _motion :deserialize buf ptr-) (incf ptr- (send _motion :serialization-length))
   ;; rds_anticollision/emergency_stop_root_cause _emergency_stop_root_causes
     (send _emergency_stop_root_causes :deserialize buf ptr-) (incf ptr- (send _emergency_stop_root_causes :serialization-length))
   ;; rds_anticollision/error[] _errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errors (let (r) (dotimes (i n) (push (instance rds_anticollision::error :init) r)) r))
     (dolist (elem- _errors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rds_anticollision/error[] _warnings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _warnings (let (r) (dotimes (i n) (push (instance rds_anticollision::error :init) r)) r))
     (dolist (elem- _warnings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rds_anticollision/safety_chain_state _safety_chain_state
     (send _safety_chain_state :deserialize buf ptr-) (incf ptr- (send _safety_chain_state :serialization-length))
   ;; rds_anticollision/ability _controller_status
     (send _controller_status :deserialize buf ptr-) (incf ptr- (send _controller_status :serialization-length))
   ;; rds_anticollision/ability _engagement_ability
     (send _engagement_ability :deserialize buf ptr-) (incf ptr- (send _engagement_ability :serialization-length))
   ;; rds_anticollision/start_mission_state _start_mission_state
     (send _start_mission_state :deserialize buf ptr-) (incf ptr- (send _start_mission_state :serialization-length))
   ;;
   self)
  )

(setf (get rds_anticollision::msg_vehicle_state_common :md5sum-) "5c4e825550da842f8d9590a064f49c07")
(setf (get rds_anticollision::msg_vehicle_state_common :datatype-) "rds_anticollision/msg_vehicle_state_common")
(setf (get rds_anticollision::msg_vehicle_state_common :definition-)
      "Header header

drive_mode drive_mode

motion motion
emergency_stop_root_cause emergency_stop_root_causes
error[] errors
error[] warnings

safety_chain_state safety_chain_state
ability controller_status
ability engagement_ability
start_mission_state start_mission_state

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rds_anticollision/drive_mode
uint8 DRIVE_MODE_MANUAL = 0 
uint8 DRIVE_MODE_AUTOMATIC = 1
uint8 DRIVE_MODE_TELEOPERATION = 2

uint8 drive_mode

================================================================================
MSG: rds_anticollision/motion
# Motion type
uint8 MOTION_UNKNOWN = 0
uint8 MOTION_MOVING = 1
uint8 MOTION_NULL_SPEED = 2
uint8 MOTION_PARKED = 3

uint8 motion

================================================================================
MSG: rds_anticollision/emergency_stop_root_cause
error[] causes

# Vehicle Context when fired
float32 speed

================================================================================
MSG: rds_anticollision/error
# Generic error
# Value field equals 0 means no error (whatever category is set to)
uint32 category
int32 value

================================================================================
MSG: rds_anticollision/safety_chain_state
uint8 STATE_ACTIVE = 0
uint8 STATE_DISABLED = 1
uint8 STATE_FAILSOFT = 2

uint8 state

================================================================================
MSG: rds_anticollision/ability
int8 ABILITY_NOT_APPLICABLE = -1
int8 ABILITY_NOT_AVAILABLE = 0 
int8 ABILITY_TRUE = 1
int8 ABILITY_FALSE = 2

int8 ability

================================================================================
MSG: rds_anticollision/start_mission_state
uint8 STATE_NOT_SUPPORTED = 0
uint8 STATE_NOT_TRIGGERABLE = 1
uint8 STATE_TRIGGERABLE = 2
uint8 STATE_TRIGGERED = 3

uint8 state

")



(provide :rds_anticollision/msg_vehicle_state_common "5c4e825550da842f8d9590a064f49c07")


