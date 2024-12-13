;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::LissajousTrackerFeedback)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'LissajousTrackerFeedback (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::LISSAJOUSTRACKERFEEDBACK")
  (make-package "KR_TRACKER_MSGS::LISSAJOUSTRACKERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude LissajousTrackerFeedback.msg.html


(defclass kr_tracker_msgs::LissajousTrackerFeedback
  :super ros::object
  :slots (_time_to_completion ))

(defmethod kr_tracker_msgs::LissajousTrackerFeedback
  (:init
   (&key
    ((:time_to_completion __time_to_completion) 0.0)
    )
   (send-super :init)
   (setq _time_to_completion (float __time_to_completion))
   self)
  (:time_to_completion
   (&optional __time_to_completion)
   (if __time_to_completion (setq _time_to_completion __time_to_completion)) _time_to_completion)
  (:serialization-length
   ()
   (+
    ;; float64 _time_to_completion
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time_to_completion
       (sys::poke _time_to_completion (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time_to_completion
     (setq _time_to_completion (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kr_tracker_msgs::LissajousTrackerFeedback :md5sum-) "214517dc2e3be6dd6dfc1aee81c582f8")
(setf (get kr_tracker_msgs::LissajousTrackerFeedback :datatype-) "kr_tracker_msgs/LissajousTrackerFeedback")
(setf (get kr_tracker_msgs::LissajousTrackerFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
# distance from the goal
float64 time_to_completion


")



(provide :kr_tracker_msgs/LissajousTrackerFeedback "214517dc2e3be6dd6dfc1aee81c582f8")


