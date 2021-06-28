;; Auto-generated. Do not edit!


(when (boundp 'AnhungControl::state)
  (if (not (find-package "ANHUNGCONTROL"))
    (make-package "ANHUNGCONTROL"))
  (shadow 'state (find-package "ANHUNGCONTROL")))
(unless (find-package "ANHUNGCONTROL::STATE")
  (make-package "ANHUNGCONTROL::STATE"))

(in-package "ROS")
;;//! \htmlinclude state.msg.html


(defclass AnhungControl::state
  :super ros::object
  :slots (_id _state ))

(defmethod AnhungControl::state
  (:init
   (&key
    ((:id __id) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _state (round __state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(setf (get AnhungControl::state :md5sum-) "a8661fa608fa36fba2ec658a57a3be9f")
(setf (get AnhungControl::state :datatype-) "AnhungControl/state")
(setf (get AnhungControl::state :definition-)
      "int16 id
int8 state

")



(provide :AnhungControl/state "a8661fa608fa36fba2ec658a57a3be9f")


