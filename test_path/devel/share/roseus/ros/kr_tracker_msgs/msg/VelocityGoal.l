;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::VelocityGoal)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'VelocityGoal (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::VELOCITYGOAL")
  (make-package "KR_TRACKER_MSGS::VELOCITYGOAL"))

(in-package "ROS")
;;//! \htmlinclude VelocityGoal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kr_tracker_msgs::VelocityGoal
  :super ros::object
  :slots (_header _vx _vy _vz _vyaw _use_position_gains ))

(defmethod kr_tracker_msgs::VelocityGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:vyaw __vyaw) 0.0)
    ((:use_position_gains __use_position_gains) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _vyaw (float __vyaw))
   (setq _use_position_gains __use_position_gains)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
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
   ;;
   self)
  )

(setf (get kr_tracker_msgs::VelocityGoal :md5sum-) "44cf5dc5fa4bededf2439ea0b38446f2")
(setf (get kr_tracker_msgs::VelocityGoal :datatype-) "kr_tracker_msgs/VelocityGoal")
(setf (get kr_tracker_msgs::VelocityGoal :definition-)
      "std_msgs/Header header
float64 vx
float64 vy
float64 vz
float64 vyaw
bool use_position_gains
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :kr_tracker_msgs/VelocityGoal "44cf5dc5fa4bededf2439ea0b38446f2")


