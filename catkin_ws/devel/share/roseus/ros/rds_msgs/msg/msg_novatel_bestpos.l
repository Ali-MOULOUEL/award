;; Auto-generated. Do not edit!


(when (boundp 'rds_msgs::msg_novatel_bestpos)
  (if (not (find-package "RDS_MSGS"))
    (make-package "RDS_MSGS"))
  (shadow 'msg_novatel_bestpos (find-package "RDS_MSGS")))
(unless (find-package "RDS_MSGS::MSG_NOVATEL_BESTPOS")
  (make-package "RDS_MSGS::MSG_NOVATEL_BESTPOS"))

(in-package "ROS")
;;//! \htmlinclude msg_novatel_bestpos.msg.html


(defclass rds_msgs::msg_novatel_bestpos
  :super ros::object
  :slots (_message_id _port_address _sequence _idle _time_status _gps_week _gps_millisecs _status _solution_status _position_type _latitude _longitude _height _undulation _datum_id _latitude_standard_deviation _longitude_standard_deviation _height_standard_deviation _base_station_id _differential_age _solution_age _number_of_satellites _number_of_satellites_in_solution _num_gps_plus_glonass_l1 _num_gps_plus_glonass_l2 _extended_solution_status _signals_used_mask _crc ))

(defmethod rds_msgs::msg_novatel_bestpos
  (:init
   (&key
    ((:message_id __message_id) 0)
    ((:port_address __port_address) 0)
    ((:sequence __sequence) 0)
    ((:idle __idle) 0)
    ((:time_status __time_status) 0)
    ((:gps_week __gps_week) 0)
    ((:gps_millisecs __gps_millisecs) 0)
    ((:status __status) 0)
    ((:solution_status __solution_status) 0)
    ((:position_type __position_type) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:height __height) 0.0)
    ((:undulation __undulation) 0.0)
    ((:datum_id __datum_id) 0)
    ((:latitude_standard_deviation __latitude_standard_deviation) 0.0)
    ((:longitude_standard_deviation __longitude_standard_deviation) 0.0)
    ((:height_standard_deviation __height_standard_deviation) 0.0)
    ((:base_station_id __base_station_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:differential_age __differential_age) 0.0)
    ((:solution_age __solution_age) 0.0)
    ((:number_of_satellites __number_of_satellites) 0)
    ((:number_of_satellites_in_solution __number_of_satellites_in_solution) 0)
    ((:num_gps_plus_glonass_l1 __num_gps_plus_glonass_l1) 0)
    ((:num_gps_plus_glonass_l2 __num_gps_plus_glonass_l2) 0)
    ((:extended_solution_status __extended_solution_status) 0)
    ((:signals_used_mask __signals_used_mask) 0)
    ((:crc __crc) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _message_id (round __message_id))
   (setq _port_address (round __port_address))
   (setq _sequence (round __sequence))
   (setq _idle (round __idle))
   (setq _time_status (round __time_status))
   (setq _gps_week (round __gps_week))
   (setq _gps_millisecs (round __gps_millisecs))
   (setq _status (round __status))
   (setq _solution_status (round __solution_status))
   (setq _position_type (round __position_type))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _height (float __height))
   (setq _undulation (float __undulation))
   (setq _datum_id (round __datum_id))
   (setq _latitude_standard_deviation (float __latitude_standard_deviation))
   (setq _longitude_standard_deviation (float __longitude_standard_deviation))
   (setq _height_standard_deviation (float __height_standard_deviation))
   (setq _base_station_id __base_station_id)
   (setq _differential_age (float __differential_age))
   (setq _solution_age (float __solution_age))
   (setq _number_of_satellites (round __number_of_satellites))
   (setq _number_of_satellites_in_solution (round __number_of_satellites_in_solution))
   (setq _num_gps_plus_glonass_l1 (round __num_gps_plus_glonass_l1))
   (setq _num_gps_plus_glonass_l2 (round __num_gps_plus_glonass_l2))
   (setq _extended_solution_status (round __extended_solution_status))
   (setq _signals_used_mask (round __signals_used_mask))
   (setq _crc __crc)
   self)
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:port_address
   (&optional __port_address)
   (if __port_address (setq _port_address __port_address)) _port_address)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:idle
   (&optional __idle)
   (if __idle (setq _idle __idle)) _idle)
  (:time_status
   (&optional __time_status)
   (if __time_status (setq _time_status __time_status)) _time_status)
  (:gps_week
   (&optional __gps_week)
   (if __gps_week (setq _gps_week __gps_week)) _gps_week)
  (:gps_millisecs
   (&optional __gps_millisecs)
   (if __gps_millisecs (setq _gps_millisecs __gps_millisecs)) _gps_millisecs)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:solution_status
   (&optional __solution_status)
   (if __solution_status (setq _solution_status __solution_status)) _solution_status)
  (:position_type
   (&optional __position_type)
   (if __position_type (setq _position_type __position_type)) _position_type)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:datum_id
   (&optional __datum_id)
   (if __datum_id (setq _datum_id __datum_id)) _datum_id)
  (:latitude_standard_deviation
   (&optional __latitude_standard_deviation)
   (if __latitude_standard_deviation (setq _latitude_standard_deviation __latitude_standard_deviation)) _latitude_standard_deviation)
  (:longitude_standard_deviation
   (&optional __longitude_standard_deviation)
   (if __longitude_standard_deviation (setq _longitude_standard_deviation __longitude_standard_deviation)) _longitude_standard_deviation)
  (:height_standard_deviation
   (&optional __height_standard_deviation)
   (if __height_standard_deviation (setq _height_standard_deviation __height_standard_deviation)) _height_standard_deviation)
  (:base_station_id
   (&optional __base_station_id)
   (if __base_station_id (setq _base_station_id __base_station_id)) _base_station_id)
  (:differential_age
   (&optional __differential_age)
   (if __differential_age (setq _differential_age __differential_age)) _differential_age)
  (:solution_age
   (&optional __solution_age)
   (if __solution_age (setq _solution_age __solution_age)) _solution_age)
  (:number_of_satellites
   (&optional __number_of_satellites)
   (if __number_of_satellites (setq _number_of_satellites __number_of_satellites)) _number_of_satellites)
  (:number_of_satellites_in_solution
   (&optional __number_of_satellites_in_solution)
   (if __number_of_satellites_in_solution (setq _number_of_satellites_in_solution __number_of_satellites_in_solution)) _number_of_satellites_in_solution)
  (:num_gps_plus_glonass_l1
   (&optional __num_gps_plus_glonass_l1)
   (if __num_gps_plus_glonass_l1 (setq _num_gps_plus_glonass_l1 __num_gps_plus_glonass_l1)) _num_gps_plus_glonass_l1)
  (:num_gps_plus_glonass_l2
   (&optional __num_gps_plus_glonass_l2)
   (if __num_gps_plus_glonass_l2 (setq _num_gps_plus_glonass_l2 __num_gps_plus_glonass_l2)) _num_gps_plus_glonass_l2)
  (:extended_solution_status
   (&optional __extended_solution_status)
   (if __extended_solution_status (setq _extended_solution_status __extended_solution_status)) _extended_solution_status)
  (:signals_used_mask
   (&optional __signals_used_mask)
   (if __signals_used_mask (setq _signals_used_mask __signals_used_mask)) _signals_used_mask)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:serialization-length
   ()
   (+
    ;; uint16 _message_id
    2
    ;; uint8 _port_address
    1
    ;; uint16 _sequence
    2
    ;; uint8 _idle
    1
    ;; uint8 _time_status
    1
    ;; uint16 _gps_week
    2
    ;; uint32 _gps_millisecs
    4
    ;; uint32 _status
    4
    ;; int32 _solution_status
    4
    ;; int32 _position_type
    4
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _height
    8
    ;; float32 _undulation
    4
    ;; int32 _datum_id
    4
    ;; float32 _latitude_standard_deviation
    4
    ;; float32 _longitude_standard_deviation
    4
    ;; float32 _height_standard_deviation
    4
    ;; int8[] _base_station_id
    (* 1    (length _base_station_id)) 4
    ;; float32 _differential_age
    4
    ;; float32 _solution_age
    4
    ;; uint8 _number_of_satellites
    1
    ;; uint8 _number_of_satellites_in_solution
    1
    ;; uint8 _num_gps_plus_glonass_l1
    1
    ;; uint8 _num_gps_plus_glonass_l2
    1
    ;; uint8 _extended_solution_status
    1
    ;; uint8 _signals_used_mask
    1
    ;; uint8[] _crc
    (* 1    (length _crc)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _message_id
       (write-word _message_id s)
     ;; uint8 _port_address
       (write-byte _port_address s)
     ;; uint16 _sequence
       (write-word _sequence s)
     ;; uint8 _idle
       (write-byte _idle s)
     ;; uint8 _time_status
       (write-byte _time_status s)
     ;; uint16 _gps_week
       (write-word _gps_week s)
     ;; uint32 _gps_millisecs
       (write-long _gps_millisecs s)
     ;; uint32 _status
       (write-long _status s)
     ;; int32 _solution_status
       (write-long _solution_status s)
     ;; int32 _position_type
       (write-long _position_type s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _datum_id
       (write-long _datum_id s)
     ;; float32 _latitude_standard_deviation
       (sys::poke _latitude_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_standard_deviation
       (sys::poke _longitude_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height_standard_deviation
       (sys::poke _height_standard_deviation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8[] _base_station_id
     (write-long (length _base_station_id) s)
     (dotimes (i (length _base_station_id))
       (write-byte (elt _base_station_id i) s)
       )
     ;; float32 _differential_age
       (sys::poke _differential_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _solution_age
       (sys::poke _solution_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _number_of_satellites
       (write-byte _number_of_satellites s)
     ;; uint8 _number_of_satellites_in_solution
       (write-byte _number_of_satellites_in_solution s)
     ;; uint8 _num_gps_plus_glonass_l1
       (write-byte _num_gps_plus_glonass_l1 s)
     ;; uint8 _num_gps_plus_glonass_l2
       (write-byte _num_gps_plus_glonass_l2 s)
     ;; uint8 _extended_solution_status
       (write-byte _extended_solution_status s)
     ;; uint8 _signals_used_mask
       (write-byte _signals_used_mask s)
     ;; uint8[] _crc
     (write-long (length _crc) s)
     (princ _crc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _message_id
     (setq _message_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _port_address
     (setq _port_address (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _sequence
     (setq _sequence (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _idle
     (setq _idle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _time_status
     (setq _time_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _gps_week
     (setq _gps_week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _gps_millisecs
     (setq _gps_millisecs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _solution_status
     (setq _solution_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position_type
     (setq _position_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _undulation
     (setq _undulation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _datum_id
     (setq _datum_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _latitude_standard_deviation
     (setq _latitude_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_standard_deviation
     (setq _longitude_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height_standard_deviation
     (setq _height_standard_deviation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8[] _base_station_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _base_station_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _base_station_id i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _base_station_id i) 127) (setf (elt _base_station_id i) (- (elt _base_station_id i) 256)))
     ))
   ;; float32 _differential_age
     (setq _differential_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _solution_age
     (setq _solution_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _number_of_satellites
     (setq _number_of_satellites (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _number_of_satellites_in_solution
     (setq _number_of_satellites_in_solution (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_gps_plus_glonass_l1
     (setq _num_gps_plus_glonass_l1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_gps_plus_glonass_l2
     (setq _num_gps_plus_glonass_l2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _extended_solution_status
     (setq _extended_solution_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _signals_used_mask
     (setq _signals_used_mask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _crc
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _crc (make-array n :element-type :char))
     (replace _crc buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rds_msgs::msg_novatel_bestpos :md5sum-) "dbab3b4899e83ce77d1e6c53cf057239")
(setf (get rds_msgs::msg_novatel_bestpos :datatype-) "rds_msgs/msg_novatel_bestpos")
(setf (get rds_msgs::msg_novatel_bestpos :definition-)
      "uint16 message_id
uint8 port_address
uint16 sequence
uint8 idle
uint8 time_status
uint16 gps_week
uint32 gps_millisecs
uint32 status
int32 solution_status
int32 position_type
float64 latitude
float64 longitude
float64 height
float32 undulation
int32 datum_id
float32 latitude_standard_deviation
float32 longitude_standard_deviation
float32 height_standard_deviation
int8[] base_station_id
float32 differential_age
float32 solution_age
uint8 number_of_satellites
uint8 number_of_satellites_in_solution
uint8 num_gps_plus_glonass_l1
uint8 num_gps_plus_glonass_l2
uint8 extended_solution_status
uint8 signals_used_mask
uint8[] crc
")



(provide :rds_msgs/msg_novatel_bestpos "dbab3b4899e83ce77d1e6c53cf057239")


