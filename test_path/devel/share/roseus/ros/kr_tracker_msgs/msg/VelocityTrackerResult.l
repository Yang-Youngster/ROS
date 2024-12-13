;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::VelocityTrackerResult)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'VelocityTrackerResult (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::VELOCITYTRACKERRESULT")
  (make-package "KR_TRACKER_MSGS::VELOCITYTRACKERRESULT"))

(in-package "ROS")
;;//! \htmlinclude VelocityTrackerResult.msg.html


(defclass kr_tracker_msgs::VelocityTrackerResult
  :super ros::object
  :slots (_vx _vy _vz _vyaw _use_position_gains _duration _length ))

(defmethod kr_tracker_msgs::VelocityTrackerResult
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:vyaw __vyaw) 0.0)
    ((:use_position_gains __use_position_gains) nil)
    ((:duration __duration) 0.0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _vyaw (float __vyaw))
   (setq _use_position_gains __use_position_gains)
   (setq _duration (float __duration))
   (setq _length (float __length))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:vyaw
   (&optional __vyaw)
   (if __vyaw (setq _vyaw __vyaw)) _vyaw)
  (:use_position_gains
   (&optional (__use_position_gains :null))
   (if (not (eq __use_position_gains :null)) (setq _use_position_gains __use_position_gains)) _use_position_gains)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ;; float64 _vyaw
    8
    ;; bool _use_position_gains
    1
    ;; float64 _duration
    8
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vyaw
       (sys::poke _vyaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _use_position_gains
       (if _use_position_gains (write-byte -1 s) (write-byte 0 s))
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vyaw
     (setq _vyaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _use_position_gains
     (setq _use_position_gains (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kr_tracker_msgs::VelocityTrackerResult :md5sum-) "bacc048b855c2d3ab27b483c690b44f0")
(setf (get kr_tracker_msgs::VelocityTrackerResult :datatype-) "kr_tracker_msgs/VelocityTrackerResult")
(setf (get kr_tracker_msgs::VelocityTrackerResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
# send back goal
float64 vx
float64 vy
float64 vz
float64 vyaw
bool use_position_gains
# time duration of the trajectory
float64 duration 
# approximate arc length of the trajectory (ie. sum of distances between position commands)
float64 length 

")



(provide :kr_tracker_msgs/VelocityTrackerResult "bacc048b855c2d3ab27b483c690b44f0")


