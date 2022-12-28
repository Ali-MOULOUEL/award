
(cl:in-package :asdf)

(defsystem "rds_anticollision-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ability" :depends-on ("_package_ability"))
    (:file "_package_ability" :depends-on ("_package"))
    (:file "drive_mode" :depends-on ("_package_drive_mode"))
    (:file "_package_drive_mode" :depends-on ("_package"))
    (:file "emergency_stop_root_cause" :depends-on ("_package_emergency_stop_root_cause"))
    (:file "_package_emergency_stop_root_cause" :depends-on ("_package"))
    (:file "error" :depends-on ("_package_error"))
    (:file "_package_error" :depends-on ("_package"))
    (:file "motion" :depends-on ("_package_motion"))
    (:file "_package_motion" :depends-on ("_package"))
    (:file "msg_vehicle_state_common" :depends-on ("_package_msg_vehicle_state_common"))
    (:file "_package_msg_vehicle_state_common" :depends-on ("_package"))
    (:file "safety_chain_state" :depends-on ("_package_safety_chain_state"))
    (:file "_package_safety_chain_state" :depends-on ("_package"))
    (:file "start_mission_state" :depends-on ("_package_start_mission_state"))
    (:file "_package_start_mission_state" :depends-on ("_package"))
  ))