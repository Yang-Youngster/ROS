; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-msg)


;//! \htmlinclude TrackerStatus.msg.html

(cl:defclass <TrackerStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracker
    :reader tracker
    :initarg :tracker
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrackerStatus (<TrackerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-msg:<TrackerStatus> is deprecated: use kr_tracker_msgs-msg:TrackerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:header-val is deprecated.  Use kr_tracker_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracker-val :lambda-list '(m))
(cl:defmethod tracker-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:tracker-val is deprecated.  Use kr_tracker_msgs-msg:tracker instead.")
  (tracker m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:status-val is deprecated.  Use kr_tracker_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackerStatus>)))
    "Constants for message type '<TrackerStatus>"
  '((:ACTIVE . 0)
    (:SUCCEEDED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackerStatus)))
    "Constants for message type 'TrackerStatus"
  '((:ACTIVE . 0)
    (:SUCCEEDED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackerStatus>) ostream)
  "Serializes a message object of type '<TrackerStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tracker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tracker))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackerStatus>) istream)
  "Deserializes a message object of type '<TrackerStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracker) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tracker) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackerStatus>)))
  "Returns string type for a message object of type '<TrackerStatus>"
  "kr_tracker_msgs/TrackerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackerStatus)))
  "Returns string type for a message object of type 'TrackerStatus"
  "kr_tracker_msgs/TrackerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackerStatus>)))
  "Returns md5sum for a message object of type '<TrackerStatus>"
  "90a1e2acaea8ad921eedfd5e14564b45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackerStatus)))
  "Returns md5sum for a message object of type 'TrackerStatus"
  "90a1e2acaea8ad921eedfd5e14564b45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackerStatus>)))
  "Returns full string definition for message of type '<TrackerStatus>"
  (cl:format cl:nil "std_msgs/Header header~%string tracker~%uint8 status~%~%# Options for the status~%uint8 ACTIVE    = 0             # Currently active~%uint8 SUCCEEDED = 1             # The tracker has finished~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackerStatus)))
  "Returns full string definition for message of type 'TrackerStatus"
  (cl:format cl:nil "std_msgs/Header header~%string tracker~%uint8 status~%~%# Options for the status~%uint8 ACTIVE    = 0             # Currently active~%uint8 SUCCEEDED = 1             # The tracker has finished~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'tracker))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':tracker (tracker msg))
    (cl:cons ':status (status msg))
))
