;; Auto-generated. Do not edit!


(when (boundp 'AnhungControl::setmap_ctr)
  (if (not (find-package "ANHUNGCONTROL"))
    (make-package "ANHUNGCONTROL"))
  (shadow 'setmap_ctr (find-package "ANHUNGCONTROL")))
(unless (find-package "ANHUNGCONTROL::SETMAP_CTR")
  (make-package "ANHUNGCONTROL::SETMAP_CTR"))

(in-package "ROS")
;;//! \htmlinclude setmap_ctr.msg.html


(defclass AnhungControl::setmap_ctr
  :super ros::object
  :slots (_type _Name _ini_pose_x _ini_pose_y _ini_pose_z ))

(defmethod AnhungControl::setmap_ctr
  (:init
   (&key
    ((:type __type) "")
    ((:Name __Name) "")
    ((:ini_pose_x __ini_pose_x) 0.0)
    ((:ini_pose_y __ini_pose_y) 0.0)
    ((:ini_pose_z __ini_pose_z) 0.0)
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _Name (string __Name))
   (setq _ini_pose_x (float __ini_pose_x))
   (setq _ini_pose_y (float __ini_pose_y))
   (setq _ini_pose_z (float __ini_pose_z))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:Name
   (&optional __Name)
   (if __Name (setq _Name __Name)) _Name)
  (:ini_pose_x
   (&optional __ini_pose_x)
   (if __ini_pose_x (setq _ini_pose_x __ini_pose_x)) _ini_pose_x)
  (:ini_pose_y
   (&optional __ini_pose_y)
   (if __ini_pose_y (setq _ini_pose_y __ini_pose_y)) _ini_pose_y)
  (:ini_pose_z
   (&optional __ini_pose_z)
   (if __ini_pose_z (setq _ini_pose_z __ini_pose_z)) _ini_pose_z)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _Name
    4 (length _Name)
    ;; float32 _ini_pose_x
    4
    ;; float32 _ini_pose_y
    4
    ;; float32 _ini_pose_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;; float32 _ini_pose_x
       (sys::poke _ini_pose_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ini_pose_y
       (sys::poke _ini_pose_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ini_pose_z
       (sys::poke _ini_pose_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _ini_pose_x
     (setq _ini_pose_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ini_pose_y
     (setq _ini_pose_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ini_pose_z
     (setq _ini_pose_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get AnhungControl::setmap_ctr :md5sum-) "8c23a07c53b1d6aa0bb1c34e1d6baaf2")
(setf (get AnhungControl::setmap_ctr :datatype-) "AnhungControl/setmap_ctr")
(setf (get AnhungControl::setmap_ctr :definition-)
      "string type
string Name
float32 ini_pose_x
float32 ini_pose_y
float32 ini_pose_z

")



(provide :AnhungControl/setmap_ctr "8c23a07c53b1d6aa0bb1c34e1d6baaf2")


