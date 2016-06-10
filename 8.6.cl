;Write ALLODDP, a recursive function that returns T if all the numbers
;in a list are odd
(defun alloddp(x)
  (cond
    ((null x) t)
    ((not (oddp (car x))) nil)
    (t (alloddp (cdr x)))
    )
  )

(print (alloddp '(1 2 3 4)))
(print (alloddp '(1 5 3 7)))
