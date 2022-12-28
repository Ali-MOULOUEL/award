; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude ObjState.msg.html

(cl:defclass <ObjState> (roslisp-msg-protocol:ros-message)
  ((ObjState
    :reader ObjState
    :initarg :ObjState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjState (<ObjState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<ObjState> is deprecated: use rds_conti_radar_object_list_msgs-msg:ObjState instead.")))

(cl:ensure-generic-function 'ObjState-val :lambda-list '(m))
(cl:defmethod ObjState-val ((m <ObjState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:ObjState-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:ObjState instead.")
  (ObjState m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjState>)))
    "Constants for message type '<ObjState>"
  '((:OBJSTATE_DELETED . 0)
    (:OBJSTATE_NEW . 1)
    (:OBJSTATE_MEASURED . 2)
    (:OBJSTATE_PREDICTED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjState)))
    "Constants for message type 'ObjState"
  '((:OBJSTATE_DELETED . 0)
    (:OBJSTATE_NEW . 1)
    (:OBJSTATE_MEASURED . 2)
    (:OBJSTATE_PREDICTED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjState>) ostream)
  "Serializes a message object of type '<ObjState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ObjState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjState>) istream)
  "Deserializes a message object of type '<ObjState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ObjState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjState>)))
  "Returns string type for a message object of type '<ObjState>"
  "rds_conti_radar_object_list_msgs/ObjState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjState)))
  "Returns string type for a message object of type 'ObjState"
  "rds_conti_radar_object_list_msgs/ObjState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjState>)))
  "Returns md5sum for a message object of type '<ObjState>"
  "81b9ceedc1cd61a2e377a5bb984f61bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjState)))
  "Returns md5sum for a message object of type 'ObjState"
  "81b9ceedc1cd61a2e377a5bb984f61bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjState>)))
  "Returns full string definition for message of type '<ObjState>"
  (cl:format cl:nil "#Radarobject ObjState field~%uint8 OBJSTATE_DELETED = 0~%uint8 OBJSTATE_NEW = 1~%uint8 OBJSTATE_MEASURED = 2~%uint8 OBJSTATE_PREDICTED = 3~%~%uint8 ObjState~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjState)))
  "Returns full string definition for message of type 'ObjState"
  (cl:format cl:nil "#Radarobject ObjState field~%uint8 OBJSTATE_DELETED = 0~%uint8 OBJSTATE_NEW = 1~%uint8 OBJSTATE_MEASURED = 2~%uint8 OBJSTATE_PREDICTED = 3~%~%uint8 ObjState~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjState>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjState
    (cl:cons ':ObjState (ObjState msg))
))
