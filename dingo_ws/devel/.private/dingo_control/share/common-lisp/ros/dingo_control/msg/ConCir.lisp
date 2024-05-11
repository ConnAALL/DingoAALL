; Auto-generated. Do not edit!


(cl:in-package dingo_control-msg)


;//! \htmlinclude ConCir.msg.html

(cl:defclass <ConCir> (roslisp-msg-protocol:ros-message)
  ((string
    :reader string
    :initarg :string
    :type cl:string
    :initform ""))
)

(cl:defclass ConCir (<ConCir>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConCir>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConCir)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dingo_control-msg:<ConCir> is deprecated: use dingo_control-msg:ConCir instead.")))

(cl:ensure-generic-function 'string-val :lambda-list '(m))
(cl:defmethod string-val ((m <ConCir>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:string-val is deprecated.  Use dingo_control-msg:string instead.")
  (string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConCir>) ostream)
  "Serializes a message object of type '<ConCir>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConCir>) istream)
  "Deserializes a message object of type '<ConCir>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConCir>)))
  "Returns string type for a message object of type '<ConCir>"
  "dingo_control/ConCir")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConCir)))
  "Returns string type for a message object of type 'ConCir"
  "dingo_control/ConCir")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConCir>)))
  "Returns md5sum for a message object of type '<ConCir>"
  "923dd8c946bcf1b66f509c36c23d7b88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConCir)))
  "Returns md5sum for a message object of type 'ConCir"
  "923dd8c946bcf1b66f509c36c23d7b88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConCir>)))
  "Returns full string definition for message of type '<ConCir>"
  (cl:format cl:nil "string string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConCir)))
  "Returns full string definition for message of type 'ConCir"
  (cl:format cl:nil "string string~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConCir>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConCir>))
  "Converts a ROS message object to a list"
  (cl:list 'ConCir
    (cl:cons ':string (string msg))
))
