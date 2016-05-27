;Write a function MAKE-EVEN that makes an odd number even by
;adding one to it. If the input to MAKE-EVEN is already even, it should
;be returned unchanged
(defun make-even(x)
  (if (evenp x) x (1+ x))
  )

(print (make-even 5))
(print (make-even 4))
