
(cl:in-package :asdf)

(defsystem "JoyStick-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Node_recv" :depends-on ("_package_Node_recv"))
    (:file "_package_Node_recv" :depends-on ("_package"))
    (:file "joystick" :depends-on ("_package_joystick"))
    (:file "_package_joystick" :depends-on ("_package"))
  ))