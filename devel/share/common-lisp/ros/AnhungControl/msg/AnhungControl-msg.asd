
(cl:in-package :asdf)

(defsystem "AnhungControl-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Battery" :depends-on ("_package_Battery"))
    (:file "_package_Battery" :depends-on ("_package"))
    (:file "Node_recv" :depends-on ("_package_Node_recv"))
    (:file "_package_Node_recv" :depends-on ("_package"))
    (:file "joystick" :depends-on ("_package_joystick"))
    (:file "_package_joystick" :depends-on ("_package"))
    (:file "setmap_ctr" :depends-on ("_package_setmap_ctr"))
    (:file "_package_setmap_ctr" :depends-on ("_package"))
    (:file "state" :depends-on ("_package_state"))
    (:file "_package_state" :depends-on ("_package"))
    (:file "traffic_recv" :depends-on ("_package_traffic_recv"))
    (:file "_package_traffic_recv" :depends-on ("_package"))
  ))