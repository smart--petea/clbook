(defun add-up (x)
  (cond
    ((null x) 0)
    (t (+ (first x) (add-up (cdr x)))
       )
    )
  )

(print (add-up '(2 3 7)))
