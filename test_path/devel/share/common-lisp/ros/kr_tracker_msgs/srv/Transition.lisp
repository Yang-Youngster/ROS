; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-srv)


;//! \htmlinclude Transition-request.msg.html

(cl:defclass <Transition-request> (roslisp-msg-protocol:ros-message)
  ((tracker
    :reader tracker
    :initarg :tracker
    :type cl:string
    :initform ""))
)

(cl:defclass Transition-request (<Transition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-srv:<Transition-request> is deprecated: use kr_tracker_msgs-srv:Transition-request instead.")))

(cl:ensure-generic-function 'tracker-val :lambda-list '(m))
(cl:defmethod tracker-val ((m <Transition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-srv:tracker-val is deprecated.  Use kr_tracker_msgs-srv:tracker instead.")
  (tracker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transition-request>) ostream)
  "Serializes a message object of type '<Transition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tracker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tracker))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transition-request>) istream)
  "Deserializes a message object of type '<Transition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracker) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tracker) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transition-request>)))
  "Returns string type for a service object of type '<Transition-request>"
  "kr_tracker_msgs/TransitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transition-request)))
  "Returns string type for a service object of type 'Transition-request"
  "kr_tracker_msgs/TransitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transition-request>)))
  "Returns md5sum for a message object of type '<Transition-request>"
  "7a6dbec9d877a7b581bcbbf87b2ab4e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transition-request)))
  "Returns md5sum for a message object of type 'Transition-request"
  "7a6dbec9d877a7b581bcbbf87b2ab4e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transition-request>)))
  "Returns full string definition for message of type '<Transition-request>"
  (cl:format cl:nil "string tracker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transition-request)))
  "Returns full string definition for message of type 'Transition-request"
  (cl:format cl:nil "string tracker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tracker))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Transition-request
    (cl:cons ':tracker (tracker msg))
))
;//! \htmlinclude Transition-response.msg.html

(cl:defclass <Transition-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Transition-response (<Transition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-srv:<Transition-response> is deprecated: use kr_tracker_msgs-srv:Transition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Transition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-srv:success-val is deprecated.  Use kr_tracker_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Transition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-srv:message-val is deprecated.  Use kr_tracker_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transition-response>) ostream)
  "Serializes a message object of type '<Transition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transition-response>) istream)
  "Deserializes a message object of type '<Transition-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transition-response>)))
  "Returns string type for a service object of type '<Transition-response>"
  "kr_tracker_msgs/TransitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transition-response)))
  "Returns string type for a service object of type 'Transition-response"
  "kr_tracker_msgs/TransitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transition-response>)))
  "Returns md5sum for a message object of type '<Transition-response>"
  "7a6dbec9d877a7b581bcbbf87b2ab4e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transition-response)))
  "Returns md5sum for a message object of type 'Transition-response"
  "7a6dbec9d877a7b581bcbbf87b2ab4e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transition-response>)))
  "Returns full string definition for message of type '<Transition-response>"
  (cl:format cl:nil "bool success   # indicate successful transition~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transition-response)))
  "Returns full string definition for message of type 'Transition-response"
  (cl:format cl:nil "bool success   # indicate successful transition~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transition-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Transition-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Transition)))
  'Transition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Transition)))
  'Transition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transition)))
  "Returns string type for a service object of type '<Transition>"
  "kr_tracker_msgs/Transition")