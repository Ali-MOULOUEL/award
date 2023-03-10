
(cl:in-package :asdf)

(defsystem "rds_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ability" :depends-on ("_package_ability"))
    (:file "_package_ability" :depends-on ("_package"))
    (:file "command_car" :depends-on ("_package_command_car"))
    (:file "_package_command_car" :depends-on ("_package"))
    (:file "drive_mode" :depends-on ("_package_drive_mode"))
    (:file "_package_drive_mode" :depends-on ("_package"))
    (:file "emergency_stop_root_cause" :depends-on ("_package_emergency_stop_root_cause"))
    (:file "_package_emergency_stop_root_cause" :depends-on ("_package"))
    (:file "error" :depends-on ("_package_error"))
    (:file "_package_error" :depends-on ("_package"))
    (:file "gnss_mode" :depends-on ("_package_gnss_mode"))
    (:file "_package_gnss_mode" :depends-on ("_package"))
    (:file "localization_gnss" :depends-on ("_package_localization_gnss"))
    (:file "_package_localization_gnss" :depends-on ("_package"))
    (:file "localization_gnss_detail" :depends-on ("_package_localization_gnss_detail"))
    (:file "_package_localization_gnss_detail" :depends-on ("_package"))
    (:file "motion" :depends-on ("_package_motion"))
    (:file "_package_motion" :depends-on ("_package"))
    (:file "msg_novatel_bestpos" :depends-on ("_package_msg_novatel_bestpos"))
    (:file "_package_msg_novatel_bestpos" :depends-on ("_package"))
    (:file "msg_vehicle_state_common" :depends-on ("_package_msg_vehicle_state_common"))
    (:file "_package_msg_vehicle_state_common" :depends-on ("_package"))
    (:file "safety_chain_state" :depends-on ("_package_safety_chain_state"))
    (:file "_package_safety_chain_state" :depends-on ("_package"))
    (:file "start_mission_state" :depends-on ("_package_start_mission_state"))
    (:file "_package_start_mission_state" :depends-on ("_package"))
  ))