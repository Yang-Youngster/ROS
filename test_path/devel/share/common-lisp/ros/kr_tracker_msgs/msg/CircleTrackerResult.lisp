; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-msg)


;//! \htmlinclude CircleTrackerResult.msg.html

(cl:defclass <CircleTrackerResult> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass CircleTrackerResult (<CircleTrackerResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CircleTrackerResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CircleTrackerResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-msg:<CircleTrackerResult> is deprecated: use kr_tracker_msgs-msg:CircleTrackerResult instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <CircleTrackerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:duration-val is deprecated.  Use kr_tracker_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <CircleTrackerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:length-val is deprecated.  Use kr_tracker_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CircleTrackerResult>) ostream)
  "Serializes a message object of type '<CircleTrackerResult>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CircleTrackerResult>) istream)
  "Deserializes a message object of type '<CircleTrackerResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CircleTrackerResult>)))
  "Returns string type for a message object of type '<CircleTrackerResult>"
  "kr_tracker_msgs/CircleTrackerResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CircleTrackerResult)))
  "Returns string type for a message object of type 'CircleTrackerResult"
  "kr_tracker_msgs/CircleTrackerResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CircleTrackerResult>)))
  "Returns md5sum for a message object of type '<CircleTrackerResult>"
  "d534c0800798f178462d74136c98ee91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CircleTrackerResult)))
  "Returns md5sum for a message object of type 'CircleTrackerResult"
  "d534c0800798f178462d74136c98ee91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CircleTrackerResult>)))
  "Returns full string definition for message of type '<CircleTrackerResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%# time duration of the trajectory~%float64 duration ~%# approximate arc length of the trajectory (ie. sum of distances between position commands)~%float64 length ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CircleTrackerResult)))
  "Returns full string definition for message of type 'CircleTrackerResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%# time duration of the trajectory~%float64 duration ~%# approximate arc length of the trajectory (ie. sum of distances between position commands)~%float64 length ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CircleTrackerResult>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CircleTrackerResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CircleTrackerResult
    (cl:cons ':duration (duration msg))
    (cl:cons ':length (length msg))
))
