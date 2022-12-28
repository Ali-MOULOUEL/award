; Auto-generated. Do not edit!


(cl:in-package rds_msgs-msg)


;//! \htmlinclude msg_novatel_bestpos.msg.html

(cl:defclass <msg_novatel_bestpos> (roslisp-msg-protocol:ros-message)
  ((message_id
    :reader message_id
    :initarg :message_id
    :type cl:fixnum
    :initform 0)
   (port_address
    :reader port_address
    :initarg :port_address
    :type cl:fixnum
    :initform 0)
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:fixnum
    :initform 0)
   (idle
    :reader idle
    :initarg :idle
    :type cl:fixnum
    :initform 0)
   (time_status
    :reader time_status
    :initarg :time_status
    :type cl:fixnum
    :initform 0)
   (gps_week
    :reader gps_week
    :initarg :gps_week
    :type cl:fixnum
    :initform 0)
   (gps_millisecs
    :reader gps_millisecs
    :initarg :gps_millisecs
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (solution_status
    :reader solution_status
    :initarg :solution_status
    :type cl:integer
    :initform 0)
   (position_type
    :reader position_type
    :initarg :position_type
    :type cl:integer
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (undulation
    :reader undulation
    :initarg :undulation
    :type cl:float
    :initform 0.0)
   (datum_id
    :reader datum_id
    :initarg :datum_id
    :type cl:integer
    :initform 0)
   (latitude_standard_deviation
    :reader latitude_standard_deviation
    :initarg :latitude_standard_deviation
    :type cl:float
    :initform 0.0)
   (longitude_standard_deviation
    :reader longitude_standard_deviation
    :initarg :longitude_standard_deviation
    :type cl:float
    :initform 0.0)
   (height_standard_deviation
    :reader height_standard_deviation
    :initarg :height_standard_deviation
    :type cl:float
    :initform 0.0)
   (base_station_id
    :reader base_station_id
    :initarg :base_station_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (differential_age
    :reader differential_age
    :initarg :differential_age
    :type cl:float
    :initform 0.0)
   (solution_age
    :reader solution_age
    :initarg :solution_age
    :type cl:float
    :initform 0.0)
   (number_of_satellites
    :reader number_of_satellites
    :initarg :number_of_satellites
    :type cl:fixnum
    :initform 0)
   (number_of_satellites_in_solution
    :reader number_of_satellites_in_solution
    :initarg :number_of_satellites_in_solution
    :type cl:fixnum
    :initform 0)
   (num_gps_plus_glonass_l1
    :reader num_gps_plus_glonass_l1
    :initarg :num_gps_plus_glonass_l1
    :type cl:fixnum
    :initform 0)
   (num_gps_plus_glonass_l2
    :reader num_gps_plus_glonass_l2
    :initarg :num_gps_plus_glonass_l2
    :type cl:fixnum
    :initform 0)
   (extended_solution_status
    :reader extended_solution_status
    :initarg :extended_solution_status
    :type cl:fixnum
    :initform 0)
   (signals_used_mask
    :reader signals_used_mask
    :initarg :signals_used_mask
    :type cl:fixnum
    :initform 0)
   (crc
    :reader crc
    :initarg :crc
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass msg_novatel_bestpos (<msg_novatel_bestpos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg_novatel_bestpos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg_novatel_bestpos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_msgs-msg:<msg_novatel_bestpos> is deprecated: use rds_msgs-msg:msg_novatel_bestpos instead.")))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:message_id-val is deprecated.  Use rds_msgs-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'port_address-val :lambda-list '(m))
(cl:defmethod port_address-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:port_address-val is deprecated.  Use rds_msgs-msg:port_address instead.")
  (port_address m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:sequence-val is deprecated.  Use rds_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'idle-val :lambda-list '(m))
(cl:defmethod idle-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:idle-val is deprecated.  Use rds_msgs-msg:idle instead.")
  (idle m))

(cl:ensure-generic-function 'time_status-val :lambda-list '(m))
(cl:defmethod time_status-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:time_status-val is deprecated.  Use rds_msgs-msg:time_status instead.")
  (time_status m))

(cl:ensure-generic-function 'gps_week-val :lambda-list '(m))
(cl:defmethod gps_week-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:gps_week-val is deprecated.  Use rds_msgs-msg:gps_week instead.")
  (gps_week m))

(cl:ensure-generic-function 'gps_millisecs-val :lambda-list '(m))
(cl:defmethod gps_millisecs-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:gps_millisecs-val is deprecated.  Use rds_msgs-msg:gps_millisecs instead.")
  (gps_millisecs m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:status-val is deprecated.  Use rds_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'solution_status-val :lambda-list '(m))
(cl:defmethod solution_status-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:solution_status-val is deprecated.  Use rds_msgs-msg:solution_status instead.")
  (solution_status m))

(cl:ensure-generic-function 'position_type-val :lambda-list '(m))
(cl:defmethod position_type-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:position_type-val is deprecated.  Use rds_msgs-msg:position_type instead.")
  (position_type m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:latitude-val is deprecated.  Use rds_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:longitude-val is deprecated.  Use rds_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:height-val is deprecated.  Use rds_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:undulation-val is deprecated.  Use rds_msgs-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'datum_id-val :lambda-list '(m))
(cl:defmethod datum_id-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:datum_id-val is deprecated.  Use rds_msgs-msg:datum_id instead.")
  (datum_id m))

(cl:ensure-generic-function 'latitude_standard_deviation-val :lambda-list '(m))
(cl:defmethod latitude_standard_deviation-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:latitude_standard_deviation-val is deprecated.  Use rds_msgs-msg:latitude_standard_deviation instead.")
  (latitude_standard_deviation m))

(cl:ensure-generic-function 'longitude_standard_deviation-val :lambda-list '(m))
(cl:defmethod longitude_standard_deviation-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:longitude_standard_deviation-val is deprecated.  Use rds_msgs-msg:longitude_standard_deviation instead.")
  (longitude_standard_deviation m))

(cl:ensure-generic-function 'height_standard_deviation-val :lambda-list '(m))
(cl:defmethod height_standard_deviation-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:height_standard_deviation-val is deprecated.  Use rds_msgs-msg:height_standard_deviation instead.")
  (height_standard_deviation m))

(cl:ensure-generic-function 'base_station_id-val :lambda-list '(m))
(cl:defmethod base_station_id-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:base_station_id-val is deprecated.  Use rds_msgs-msg:base_station_id instead.")
  (base_station_id m))

(cl:ensure-generic-function 'differential_age-val :lambda-list '(m))
(cl:defmethod differential_age-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:differential_age-val is deprecated.  Use rds_msgs-msg:differential_age instead.")
  (differential_age m))

(cl:ensure-generic-function 'solution_age-val :lambda-list '(m))
(cl:defmethod solution_age-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:solution_age-val is deprecated.  Use rds_msgs-msg:solution_age instead.")
  (solution_age m))

(cl:ensure-generic-function 'number_of_satellites-val :lambda-list '(m))
(cl:defmethod number_of_satellites-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:number_of_satellites-val is deprecated.  Use rds_msgs-msg:number_of_satellites instead.")
  (number_of_satellites m))

(cl:ensure-generic-function 'number_of_satellites_in_solution-val :lambda-list '(m))
(cl:defmethod number_of_satellites_in_solution-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:number_of_satellites_in_solution-val is deprecated.  Use rds_msgs-msg:number_of_satellites_in_solution instead.")
  (number_of_satellites_in_solution m))

(cl:ensure-generic-function 'num_gps_plus_glonass_l1-val :lambda-list '(m))
(cl:defmethod num_gps_plus_glonass_l1-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:num_gps_plus_glonass_l1-val is deprecated.  Use rds_msgs-msg:num_gps_plus_glonass_l1 instead.")
  (num_gps_plus_glonass_l1 m))

(cl:ensure-generic-function 'num_gps_plus_glonass_l2-val :lambda-list '(m))
(cl:defmethod num_gps_plus_glonass_l2-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:num_gps_plus_glonass_l2-val is deprecated.  Use rds_msgs-msg:num_gps_plus_glonass_l2 instead.")
  (num_gps_plus_glonass_l2 m))

(cl:ensure-generic-function 'extended_solution_status-val :lambda-list '(m))
(cl:defmethod extended_solution_status-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:extended_solution_status-val is deprecated.  Use rds_msgs-msg:extended_solution_status instead.")
  (extended_solution_status m))

(cl:ensure-generic-function 'signals_used_mask-val :lambda-list '(m))
(cl:defmethod signals_used_mask-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:signals_used_mask-val is deprecated.  Use rds_msgs-msg:signals_used_mask instead.")
  (signals_used_mask m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <msg_novatel_bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_msgs-msg:crc-val is deprecated.  Use rds_msgs-msg:crc instead.")
  (crc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg_novatel_bestpos>) ostream)
  "Serializes a message object of type '<msg_novatel_bestpos>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port_address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_millisecs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_millisecs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_millisecs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_millisecs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'solution_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'undulation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'datum_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude_standard_deviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude_standard_deviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_standard_deviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'base_station_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'base_station_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'differential_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'solution_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_satellites)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_satellites_in_solution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_plus_glonass_l1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_plus_glonass_l2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extended_solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signals_used_mask)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'crc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'crc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg_novatel_bestpos>) istream)
  "Deserializes a message object of type '<msg_novatel_bestpos>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port_address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_millisecs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_millisecs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_millisecs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_millisecs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'undulation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'datum_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude_standard_deviation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_standard_deviation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_standard_deviation) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'base_station_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'base_station_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'differential_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'solution_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_satellites)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_satellites_in_solution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_plus_glonass_l1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_plus_glonass_l2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'extended_solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signals_used_mask)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'crc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'crc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg_novatel_bestpos>)))
  "Returns string type for a message object of type '<msg_novatel_bestpos>"
  "rds_msgs/msg_novatel_bestpos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg_novatel_bestpos)))
  "Returns string type for a message object of type 'msg_novatel_bestpos"
  "rds_msgs/msg_novatel_bestpos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg_novatel_bestpos>)))
  "Returns md5sum for a message object of type '<msg_novatel_bestpos>"
  "dbab3b4899e83ce77d1e6c53cf057239")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg_novatel_bestpos)))
  "Returns md5sum for a message object of type 'msg_novatel_bestpos"
  "dbab3b4899e83ce77d1e6c53cf057239")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg_novatel_bestpos>)))
  "Returns full string definition for message of type '<msg_novatel_bestpos>"
  (cl:format cl:nil "uint16 message_id~%uint8 port_address~%uint16 sequence~%uint8 idle~%uint8 time_status~%uint16 gps_week~%uint32 gps_millisecs~%uint32 status~%int32 solution_status~%int32 position_type~%float64 latitude~%float64 longitude~%float64 height~%float32 undulation~%int32 datum_id~%float32 latitude_standard_deviation~%float32 longitude_standard_deviation~%float32 height_standard_deviation~%int8[] base_station_id~%float32 differential_age~%float32 solution_age~%uint8 number_of_satellites~%uint8 number_of_satellites_in_solution~%uint8 num_gps_plus_glonass_l1~%uint8 num_gps_plus_glonass_l2~%uint8 extended_solution_status~%uint8 signals_used_mask~%uint8[] crc~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg_novatel_bestpos)))
  "Returns full string definition for message of type 'msg_novatel_bestpos"
  (cl:format cl:nil "uint16 message_id~%uint8 port_address~%uint16 sequence~%uint8 idle~%uint8 time_status~%uint16 gps_week~%uint32 gps_millisecs~%uint32 status~%int32 solution_status~%int32 position_type~%float64 latitude~%float64 longitude~%float64 height~%float32 undulation~%int32 datum_id~%float32 latitude_standard_deviation~%float32 longitude_standard_deviation~%float32 height_standard_deviation~%int8[] base_station_id~%float32 differential_age~%float32 solution_age~%uint8 number_of_satellites~%uint8 number_of_satellites_in_solution~%uint8 num_gps_plus_glonass_l1~%uint8 num_gps_plus_glonass_l2~%uint8 extended_solution_status~%uint8 signals_used_mask~%uint8[] crc~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg_novatel_bestpos>))
  (cl:+ 0
     2
     1
     2
     1
     1
     2
     4
     4
     4
     4
     8
     8
     8
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'base_station_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'crc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg_novatel_bestpos>))
  "Converts a ROS message object to a list"
  (cl:list 'msg_novatel_bestpos
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':port_address (port_address msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':idle (idle msg))
    (cl:cons ':time_status (time_status msg))
    (cl:cons ':gps_week (gps_week msg))
    (cl:cons ':gps_millisecs (gps_millisecs msg))
    (cl:cons ':status (status msg))
    (cl:cons ':solution_status (solution_status msg))
    (cl:cons ':position_type (position_type msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':height (height msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':datum_id (datum_id msg))
    (cl:cons ':latitude_standard_deviation (latitude_standard_deviation msg))
    (cl:cons ':longitude_standard_deviation (longitude_standard_deviation msg))
    (cl:cons ':height_standard_deviation (height_standard_deviation msg))
    (cl:cons ':base_station_id (base_station_id msg))
    (cl:cons ':differential_age (differential_age msg))
    (cl:cons ':solution_age (solution_age msg))
    (cl:cons ':number_of_satellites (number_of_satellites msg))
    (cl:cons ':number_of_satellites_in_solution (number_of_satellites_in_solution msg))
    (cl:cons ':num_gps_plus_glonass_l1 (num_gps_plus_glonass_l1 msg))
    (cl:cons ':num_gps_plus_glonass_l2 (num_gps_plus_glonass_l2 msg))
    (cl:cons ':extended_solution_status (extended_solution_status msg))
    (cl:cons ':signals_used_mask (signals_used_mask msg))
    (cl:cons ':crc (crc msg))
))
