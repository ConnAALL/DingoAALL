;; Auto-generated. Do not edit!


(when (boundp 'dingo_control::ConCir)
  (if (not (find-package "DINGO_CONTROL"))
    (make-package "DINGO_CONTROL"))
  (shadow 'ConCir (find-package "DINGO_CONTROL")))
(unless (find-package "DINGO_CONTROL::CONCIR")
  (make-package "DINGO_CONTROL::CONCIR"))

(in-package "ROS")
;;//! \htmlinclude ConCir.msg.html


(defclass dingo_control::ConCir
  :super ros::object
  :slots (_string ))

(defmethod dingo_control::ConCir
  (:init
   (&key
    ((:string __string) "")
    )
   (send-super :init)
   (setq _string (string __string))
   self)
  (:string
   (&optional __string)
   (if __string (setq _string __string)) _string)
  (:serialization-length
   ()
   (+
    ;; string _string
    4 (length _string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _string
       (write-long (length _string) s) (princ _string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dingo_control::ConCir :md5sum-) "923dd8c946bcf1b66f509c36c23d7b88")
(setf (get dingo_control::ConCir :datatype-) "dingo_control/ConCir")
(setf (get dingo_control::ConCir :definition-)
      "string string

")



(provide :dingo_control/ConCir "923dd8c946bcf1b66f509c36c23d7b88")


