; Auto-generated. Do not edit!


(cl:in-package rds_conti_radar_object_list_msgs-msg)


;//! \htmlinclude ObjProvidedKinematicStates.msg.html

(cl:defclass <ObjProvidedKinematicStates> (roslisp-msg-protocol:ros-message)
  ((KinematicState
    :reader KinematicState
    :initarg :KinematicState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjProvidedKinematicStates (<ObjProvidedKinematicStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjProvidedKinematicStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjProvidedKinematicStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rds_conti_radar_object_list_msgs-msg:<ObjProvidedKinematicStates> is deprecated: use rds_conti_radar_object_list_msgs-msg:ObjProvidedKinematicStates instead.")))

(cl:ensure-generic-function 'KinematicState-val :lambda-list '(m))
(cl:defmethod KinematicState-val ((m <ObjProvidedKinematicStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rds_conti_radar_object_list_msgs-msg:KinematicState-val is deprecated.  Use rds_conti_radar_object_list_msgs-msg:KinematicState instead.")
  (KinematicState m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjProvidedKinematicStates>)))
    "Constants for message type '<ObjProvidedKinematicStates>"
  '((:KINEMATICSTATE_RELATIVE . 0)
    (:KINEMATICSTATE_ABSOLUTE . 1)
    (:KINEMATICSTATE_RELATIVE_AND_ABSOLUTE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjProvidedKinematicStates)))
    "Constants for message type 'ObjProvidedKinematicStates"
  '((:KINEMATICSTATE_RELATIVE . 0)
    (:KINEMATICSTATE_ABSOLUTE . 1)
    (:KINEMATICSTATE_RELATIVE_AND_ABSOLUTE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjProvidedKinematicStates>) ostream)
  "Serializes a message object of type '<ObjProvidedKinematicStates>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KinematicState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjProvidedKinematicStates>) istream)
  "Deserializes a message object of type '<ObjProvidedKinematicStates>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KinematicState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjProvidedKinematicStates>)))
  "Returns string type for a message object of type '<ObjProvidedKinematicStates>"
  "rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjProvidedKinematicStates)))
  "Returns string type for a message object of type 'ObjProvidedKinematicStates"
  "rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjProvidedKinematicStates>)))
  "Returns md5sum for a message object of type '<ObjProvidedKinematicStates>"
  "2f825bc1f0caabbfa32e1215fd872b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjProvidedKinematicStates)))
  "Returns md5sum for a message object of type 'ObjProvidedKinematicStates"
  "2f825bc1f0caabbfa32e1215fd872b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjProvidedKinematicStates>)))
  "Returns full string definition for message of type '<ObjProvidedKinematicStates>"
  (cl:format cl:nil "#Object kinematic state~%uint8 KINEMATICSTATE_RELATIVE = 0~%uint8 KINEMATICSTATE_ABSOLUTE = 1~%uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2~%~%uint8 KinematicState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjProvidedKinematicStates)))
  "Returns full string definition for message of type 'ObjProvidedKinematicStates"
  (cl:format cl:nil "#Object kinematic state~%uint8 KINEMATICSTATE_RELATIVE = 0~%uint8 KINEMATICSTATE_ABSOLUTE = 1~%uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2~%~%uint8 KinematicState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjProvidedKinematicStates>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjProvidedKinematicStates>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjProvidedKinematicStates
    (cl:cons ':KinematicState (KinematicState msg))
))
