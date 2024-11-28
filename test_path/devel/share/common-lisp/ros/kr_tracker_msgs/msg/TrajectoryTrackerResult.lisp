; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-msg)


;//! \htmlinclude TrajectoryTrackerResult.msg.html

(cl:defclass <TrajectoryTrackerResult> (roslisp-msg-protocol:ros-message)
  ((total_time
    :reader total_time
    :initarg :total_time
    :type cl:float
    :initform 0.0)
   (total_distance_travelled
    :reader total_distance_travelled
    :initarg :total_distance_travelled
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryTrackerResult (<TrajectoryTrackerResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryTrackerResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryTrackerResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-msg:<TrajectoryTrackerResult> is deprecated: use kr_tracker_msgs-msg:TrajectoryTrackerResult instead.")))

(cl:ensure-generic-function 'total_time-val :lambda-list '(m))
(cl:defmethod total_time-val ((m <TrajectoryTrackerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:total_time-val is deprecated.  Use kr_tracker_msgs-msg:total_time instead.")
  (total_time m))

(cl:ensure-generic-function 'total_distance_travelled-val :lambda-list '(m))
(cl:defmethod total_distance_travelled-val ((m <TrajectoryTrackerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:total_distance_travelled-val is deprecated.  Use kr_tracker_msgs-msg:total_distance_travelled instead.")
  (total_distance_travelled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryTrackerResult>) ostream)
  "Serializes a message object of type '<TrajectoryTrackerResult>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_distance_travelled))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryTrackerResult>) istream)
  "Deserializes a message object of type '<TrajectoryTrackerResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_distance_travelled) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryTrackerResult>)))
  "Returns string type for a message object of type '<TrajectoryTrackerResult>"
  "kr_tracker_msgs/TrajectoryTrackerResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryTrackerResult)))
  "Returns string type for a message object of type 'TrajectoryTrackerResult"
  "kr_tracker_msgs/TrajectoryTrackerResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryTrackerResult>)))
  "Returns md5sum for a message object of type '<TrajectoryTrackerResult>"
  "2d6eb504c212e951ae864626fb488daf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryTrackerResult)))
  "Returns md5sum for a message object of type 'TrajectoryTrackerResult"
  "2d6eb504c212e951ae864626fb488daf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryTrackerResult>)))
  "Returns full string definition for message of type '<TrajectoryTrackerResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float64 total_time~%float64 total_distance_travelled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryTrackerResult)))
  "Returns full string definition for message of type 'TrajectoryTrackerResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float64 total_time~%float64 total_distance_travelled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryTrackerResult>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryTrackerResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryTrackerResult
    (cl:cons ':total_time (total_time msg))
    (cl:cons ':total_distance_travelled (total_distance_travelled msg))
))
