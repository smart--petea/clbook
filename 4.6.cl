;Write a version of the absolute value function MY-ABS using COND
;instead IF
(defun my-abs(x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        (t 0)
        )
  )

(print (my-abs 5))
(print (my-abs -5))
