;; Auto-generated. Do not edit!


(when (boundp 'move_robot::traffic_recv)
  (if (not (find-package "MOVE_ROBOT"))
    (make-package "MOVE_ROBOT"))
  (shadow 'traffic_recv (find-package "MOVE_ROBOT")))
(unless (find-package "MOVE_ROBOT::TRAFFIC_RECV")
  (make-package "MOVE_ROBOT::TRAFFIC_RECV"))

(in-package "ROS")
;;//! \htmlinclude traffic_recv.msg.html


(defclass move_robot::traffic_recv
  :super ros::object
  :slots (_id _GO _speed ))

(defmethod move_robot::traffic_recv
  (:init
   (&key
    ((:id __id) 0)
    ((:GO __GO) 0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _GO (round __GO))
   (setq _speed (float __speed))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:GO
   (&optional __GO)
   (if __GO (setq _GO __GO)) _GO)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; int8 _GO
    1
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; int8 _GO
       (write-byte _GO s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _GO
     (setq _GO (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _GO 127) (setq _GO (- _GO 256)))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get move_robot::traffic_recv :md5sum-) "bd53addd57b8245461c1b2a9249d0685")
(setf (get move_robot::traffic_recv :datatype-) "move_robot/traffic_recv")
(setf (get move_robot::traffic_recv :definition-)
      "int16 id
int8 GO
float64 speed

")



(provide :move_robot/traffic_recv "bd53addd57b8245461c1b2a9249d0685")


