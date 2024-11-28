;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::TrackerStatus)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'TrackerStatus (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::TRACKERSTATUS")
  (make-package "KR_TRACKER_MSGS::TRACKERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TrackerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACTIVE*" (find-package "KR_TRACKER_MSGS::TRACKERSTATUS"))
(shadow '*ACTIVE* (find-package "KR_TRACKER_MSGS::TRACKERSTATUS"))
(defconstant kr_tracker_msgs::TrackerStatus::*ACTIVE* 0)
(intern "*SUCCEEDED*" (find-package "KR_TRACKER_MSGS::TRACKERSTATUS"))
(shadow '*SUCCEEDED* (find-package "KR_TRACKER_MSGS::TRACKERSTATUS"))
(defconstant kr_tracker_msgs::TrackerStatus::*SUCCEEDED* 1)

(defun kr_tracker_msgs::TrackerStatus-to-symbol (const)
  (cond
        ((= const 0) 'kr_tracker_msgs::TrackerStatus::*ACTIVE*)
        ((= const 1) 'kr_tracker_msgs::TrackerStatus::*SUCCEEDED*)
        (t nil)))

(defclass kr_tracker_msgs::TrackerStatus
  :super ros::object
  :slots (_header _tracker _status ))

(defmethod kr_tracker_msgs::TrackerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracker __tracker) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracker (string __tracker))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracker
   (&optional __tracker)
   (if __tracker (setq _tracker __tracker)) _tracker)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _tracker
    4 (length _tracker)
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _tracker
       (write-long (length _tracker) s) (princ _tracker s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _tracker
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tracker (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kr_tracker_msgs::TrackerStatus :md5sum-) "90a1e2acaea8ad921eedfd5e14564b45")
(setf (get kr_tracker_msgs::TrackerStatus :datatype-) "kr_tracker_msgs/TrackerStatus")
(setf (get kr_tracker_msgs::TrackerStatus :definition-)
      "std_msgs/Header header
string tracker
uint8 status

# Options for the status
uint8 ACTIVE    = 0             # Currently active
uint8 SUCCEEDED = 1             # The tracker has finished

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



(provide :kr_tracker_msgs/TrackerStatus "90a1e2acaea8ad921eedfd5e14564b45")


