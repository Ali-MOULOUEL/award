; Auto-generated. Do not edit!


(cl:in-package rds_anticollision-msg)


;//! \htmlinclude msg_vehicle_state_common.msg.html

(cl:defclass <msg_vehicle_state_common> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (drive_mode
    :reader drive_mode
    :initarg :drive_mode
    :type rds_anticollision-msg:drive_mode
    :initform (cl:make-instance 'rds_anticollision-msg:drive_mode))
   (motion
    :reader motion
    :initarg :motion
    :type rds_anticollision-msg:motion
    :initform (cl:make-instance 'rds_anticollision-msg:motion))
   (emergency_stop_root_causes
    :reader emergency_stop_root_causes
    :initarg :emergency_stop_root_causes
    :type rds_anticollision-msg:emergency_stop_root_cause
    :initform (cl:make-instance 'rds_anticollision-msg:emergency_stop_root_cause))
   (errors
    :reader errors
    :initarg :errors
    :type (cl:vector rds_anticollision-msg:error)
   :initform (cl:make-array 0 :element-type 'rds_anticollision-msg:error :initial-element (cl:make-instance 'rds_anticollision-msg:error)))
   (warnings
    :reader warnings
    :initarg :warnings
    :type (cl:vector rds_anticollision-msg:error)
   :initform (cl:make-array 0 :element-type 'rds_anticollision-msg:error :initial-element (cl:make-instance 'rds_anticollision-msg:error)))
   (safety_chain_state
    :reader safety_chain_state
    :initarg :safety_chain_state
    :type rds_anticollision-msg:safety_chain_state
    :initform (cl:make-instance 'rds_anticollision-msg:safety_chain_state))
   (controller_status
    :reader controller_status
    :initarg :controller_status
    :type rds_anticollision-msg:ability
    :initform (cl:make-instance 'rds_anticollision-msg:ability))
   (engagement_ability
    :reader engagement_ability
    :initarg :engagement_ability
    :type rds_anticollision-msg:ability
    :initform (cl:make-instance 'rds_anticollision-msg:ability))
   (start_mission_state
    :reader start_mission_state
    :initarg :start_mission_state
    :type rds_anticollision-msg:start_mission_state
    :initform (cl:make-instance 'rds_anticollision-msg:start_mission_state)))
)

(cl:defclass msg_vehicle_state_common (<msg_vehicle_state_common>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_vehicle_state_common>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_vehicle_state_common)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_anticollision-msg:<msg_vehicle_state_common> is deprecated: use rds_anticollision-msg:msg_vehicle_state_common instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:header-val is deprecated.  Use rds_anticollision-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drive_mode-val :lambda-list '(m))
(cl:defmethod drive_mode-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:drive_mode-val is deprecated.  Use rds_anticollision-msg:drive_mode instead.")
  (drive_mode m))

(cl:ensure-generic-function 'motion-val :lambda-list '(m))
(cl:defmethod motion-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:motion-val is deprecated.  Use rds_anticollision-msg:motion instead.")
  (motion m))

(cl:ensure-generic-function 'emergency_stop_root_causes-val :lambda-list '(m))
(cl:defmethod emergency_stop_root_causes-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:emergency_stop_root_causes-val is deprecated.  Use rds_anticollision-msg:emergency_stop_root_causes instead.")
  (emergency_stop_root_causes m))

(cl:ensure-generic-function 'errors-val :lambda-list '(m))
(cl:defmethod errors-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:errors-val is deprecated.  Use rds_anticollision-msg:errors instead.")
  (errors m))

(cl:ensure-generic-function 'warnings-val :lambda-list '(m))
(cl:defmethod warnings-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:warnings-val is deprecated.  Use rds_anticollision-msg:warnings instead.")
  (warnings m))

(cl:ensure-generic-function 'safety_chain_state-val :lambda-list '(m))
(cl:defmethod safety_chain_state-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:safety_chain_state-val is deprecated.  Use rds_anticollision-msg:safety_chain_state instead.")
  (safety_chain_state m))

(cl:ensure-generic-function 'controller_status-val :lambda-list '(m))
(cl:defmethod controller_status-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:controller_status-val is deprecated.  Use rds_anticollision-msg:controller_status instead.")
  (controller_status m))

(cl:ensure-generic-function 'engagement_ability-val :lambda-list '(m))
(cl:defmethod engagement_ability-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:engagement_ability-val is deprecated.  Use rds_anticollision-msg:engagement_ability instead.")
  (engagement_ability m))

(cl:ensure-generic-function 'start_mission_state-val :lambda-list '(m))
(cl:defmethod start_mission_state-val ((m <msg_vehicle_state_common>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_anticollision-msg:start_mission_state-val is deprecated.  Use rds_anticollision-msg:start_mission_state instead.")
  (start_mission_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_vehicle_state_common>) ostream)
  "Serializes a message object of type '<msg_vehicle_state_common>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drive_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'emergency_stop_root_causes) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'errors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'errors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'warnings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'warnings))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'safety_chain_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controller_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'engagement_ability) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_mission_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_vehicle_state_common>) istream)
  "Deserializes a message object of type '<msg_vehicle_state_common>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drive_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'emergency_stop_root_causes) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'errors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'errors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rds_anticollision-msg:error))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'warnings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'warnings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rds_anticollision-msg:error))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'safety_chain_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controller_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'engagement_ability) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_mission_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_vehicle_state_common>)))
  "Returns string type for a message object of type '<msg_vehicle_state_common>"
  "rds_anticollision/msg_vehicle_state_common")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_vehicle_state_common)))
  "Returns string type for a message object of type 'msg_vehicle_state_common"
  "rds_anticollision/msg_vehicle_state_common")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_vehicle_state_common>)))
  "Returns md5sum for a message object of type '<msg_vehicle_state_common>"
  "5c4e825550da842f8d9590a064f49c07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_vehicle_state_common)))
  "Returns md5sum for a message object of type 'msg_vehicle_state_common"
  "5c4e825550da842f8d9590a064f49c07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_vehicle_state_common>)))
  "Returns full string definition for message of type '<msg_vehicle_state_common>"
  (cl:format cl:nil "Header header~%~%drive_mode drive_mode~%~%motion motion~%emergency_stop_root_cause emergency_stop_root_causes~%error[] errors~%error[] warnings~%~%safety_chain_state safety_chain_state~%ability controller_status~%ability engagement_ability~%start_mission_state start_mission_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rds_anticollision/drive_mode~%uint8 DRIVE_MODE_MANUAL = 0 ~%uint8 DRIVE_MODE_AUTOMATIC = 1~%uint8 DRIVE_MODE_TELEOPERATION = 2~%~%uint8 drive_mode~%~%================================================================================~%MSG: rds_anticollision/motion~%# Motion type~%uint8 MOTION_UNKNOWN = 0~%uint8 MOTION_MOVING = 1~%uint8 MOTION_NULL_SPEED = 2~%uint8 MOTION_PARKED = 3~%~%uint8 motion~%~%================================================================================~%MSG: rds_anticollision/emergency_stop_root_cause~%error[] causes~%~%# Vehicle Context when fired~%float32 speed~%~%================================================================================~%MSG: rds_anticollision/error~%# Generic error~%# Value field equals 0 means no error (whatever category is set to)~%uint32 category~%int32 value~%~%================================================================================~%MSG: rds_anticollision/safety_chain_state~%uint8 STATE_ACTIVE = 0~%uint8 STATE_DISABLED = 1~%uint8 STATE_FAILSOFT = 2~%~%uint8 state~%~%================================================================================~%MSG: rds_anticollision/ability~%int8 ABILITY_NOT_APPLICABLE = -1~%int8 ABILITY_NOT_AVAILABLE = 0 ~%int8 ABILITY_TRUE = 1~%int8 ABILITY_FALSE = 2~%~%int8 ability~%~%================================================================================~%MSG: rds_anticollision/start_mission_state~%uint8 STATE_NOT_SUPPORTED = 0~%uint8 STATE_NOT_TRIGGERABLE = 1~%uint8 STATE_TRIGGERABLE = 2~%uint8 STATE_TRIGGERED = 3~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_vehicle_state_common)))
  "Returns full string definition for message of type 'msg_vehicle_state_common"
  (cl:format cl:nil "Header header~%~%drive_mode drive_mode~%~%motion motion~%emergency_stop_root_cause emergency_stop_root_causes~%error[] errors~%error[] warnings~%~%safety_chain_state safety_chain_state~%ability controller_status~%ability engagement_ability~%start_mission_state start_mission_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rds_anticollision/drive_mode~%uint8 DRIVE_MODE_MANUAL = 0 ~%uint8 DRIVE_MODE_AUTOMATIC = 1~%uint8 DRIVE_MODE_TELEOPERATION = 2~%~%uint8 drive_mode~%~%================================================================================~%MSG: rds_anticollision/motion~%# Motion type~%uint8 MOTION_UNKNOWN = 0~%uint8 MOTION_MOVING = 1~%uint8 MOTION_NULL_SPEED = 2~%uint8 MOTION_PARKED = 3~%~%uint8 motion~%~%================================================================================~%MSG: rds_anticollision/emergency_stop_root_cause~%error[] causes~%~%# Vehicle Context when fired~%float32 speed~%~%================================================================================~%MSG: rds_anticollision/error~%# Generic error~%# Value field equals 0 means no error (whatever category is set to)~%uint32 category~%int32 value~%~%================================================================================~%MSG: rds_anticollision/safety_chain_state~%uint8 STATE_ACTIVE = 0~%uint8 STATE_DISABLED = 1~%uint8 STATE_FAILSOFT = 2~%~%uint8 state~%~%================================================================================~%MSG: rds_anticollision/ability~%int8 ABILITY_NOT_APPLICABLE = -1~%int8 ABILITY_NOT_AVAILABLE = 0 ~%int8 ABILITY_TRUE = 1~%int8 ABILITY_FALSE = 2~%~%int8 ability~%~%================================================================================~%MSG: rds_anticollision/start_mission_state~%uint8 STATE_NOT_SUPPORTED = 0~%uint8 STATE_NOT_TRIGGERABLE = 1~%uint8 STATE_TRIGGERABLE = 2~%uint8 STATE_TRIGGERED = 3~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_vehicle_state_common>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drive_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'emergency_stop_root_causes))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'errors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'warnings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'safety_chain_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controller_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'engagement_ability))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_mission_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_vehicle_state_common>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_vehicle_state_common
    (cl:cons ':header (header msg))
    (cl:cons ':drive_mode (drive_mode msg))
    (cl:cons ':motion (motion msg))
    (cl:cons ':emergency_stop_root_causes (emergency_stop_root_causes msg))
    (cl:cons ':errors (errors msg))
    (cl:cons ':warnings (warnings msg))
    (cl:cons ':safety_chain_state (safety_chain_state msg))
    (cl:cons ':controller_status (controller_status msg))
    (cl:cons ':engagement_ability (engagement_ability msg))
    (cl:cons ':start_mission_state (start_mission_state msg))
))
