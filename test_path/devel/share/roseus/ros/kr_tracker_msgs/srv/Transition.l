;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::Transition)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'Transition (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::TRANSITION")
  (make-package "KR_TRACKER_MSGS::TRANSITION"))
(unless (find-package "KR_TRACKER_MSGS::TRANSITIONREQUEST")
  (make-package "KR_TRACKER_MSGS::TRANSITIONREQUEST"))
(unless (find-package "KR_TRACKER_MSGS::TRANSITIONRESPONSE")
  (make-package "KR_TRACKER_MSGS::TRANSITIONRESPONSE"))

(in-package "ROS")





(defclass kr_tracker_msgs::TransitionRequest
  :super ros::object
  :slots (_tracker ))

(defmethod kr_tracker_msgs::TransitionRequest
  (:init
   (&key
    ((:tracker __tracker) "")
    )
   (send-super :init)
   (setq _tracker (string __tracker))
   self)
  (:tracker
   (&optional __tracker)
   (if __tracker (setq _tracker __tracker)) _tracker)
  (:serialization-length
   ()
   (+
    ;; string _tracker
    4 (length _tracker)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tracker
       (write-long (length _tracker) s) (princ _tracker s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tracker
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tracker (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass kr_tracker_msgs::TransitionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod kr_tracker_msgs::TransitionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass kr_tracker_msgs::Transition
  :super ros::object
  :slots ())

(setf (get kr_tracker_msgs::Transition :md5sum-) "7a6dbec9d877a7b581bcbbf87b2ab4e7")
(setf (get kr_tracker_msgs::Transition :datatype-) "kr_tracker_msgs/Transition")
(setf (get kr_tracker_msgs::Transition :request) kr_tracker_msgs::TransitionRequest)
(setf (get kr_tracker_msgs::Transition :response) kr_tracker_msgs::TransitionResponse)

(defmethod kr_tracker_msgs::TransitionRequest
  (:response () (instance kr_tracker_msgs::TransitionResponse :init)))

(setf (get kr_tracker_msgs::TransitionRequest :md5sum-) "7a6dbec9d877a7b581bcbbf87b2ab4e7")
(setf (get kr_tracker_msgs::TransitionRequest :datatype-) "kr_tracker_msgs/TransitionRequest")
(setf (get kr_tracker_msgs::TransitionRequest :definition-)
      "string tracker
---
bool success   # indicate successful transition
string message # informational, e.g. for error messages

")

(setf (get kr_tracker_msgs::TransitionResponse :md5sum-) "7a6dbec9d877a7b581bcbbf87b2ab4e7")
(setf (get kr_tracker_msgs::TransitionResponse :datatype-) "kr_tracker_msgs/TransitionResponse")
(setf (get kr_tracker_msgs::TransitionResponse :definition-)
      "string tracker
---
bool success   # indicate successful transition
string message # informational, e.g. for error messages

")



(provide :kr_tracker_msgs/Transition "7a6dbec9d877a7b581bcbbf87b2ab4e7")


