;; Auto-generated. Do not edit!


(when (boundp 'example1_pkg::answer)
  (if (not (find-package "EXAMPLE1_PKG"))
    (make-package "EXAMPLE1_PKG"))
  (shadow 'answer (find-package "EXAMPLE1_PKG")))
(unless (find-package "EXAMPLE1_PKG::ANSWER")
  (make-package "EXAMPLE1_PKG::ANSWER"))

(in-package "ROS")
;;//! \htmlinclude answer.msg.html


(defclass example1_pkg::answer
  :super ros::object
  :slots (_sum ))

(defmethod example1_pkg::answer
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get example1_pkg::answer :md5sum-) "0ba699c25c9418c0366f3595c0c8e8ec")
(setf (get example1_pkg::answer :datatype-) "example1_pkg/answer")
(setf (get example1_pkg::answer :definition-)
      "int32 sum

")



(provide :example1_pkg/answer "0ba699c25c9418c0366f3595c0c8e8ec")


