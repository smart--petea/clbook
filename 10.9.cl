;Write a destructive function CHOP that shortens any non-NIL list to a
;list of one element. (CHOP '(FEE FIE FOE FUM)) should return (FEE)
(defun chop(lst)
  (cond ((null lst) lst)
        (t (setf (cdr lst) nil))
        )
  )

(setf lst '(fee fie foe fum))
(chop lst)
(print lst)
