;If set x is a subset of set y, the subtracting y from x shoul leave the 
;empty set. Write MY-SUBSETP, a version of the SUBSETP predicate
;that returns T if its first input is a subset of its second input
(defun my-subsetp(x y)
    (not (set-difference x y))
  )

(print (my-subsetp '(a b) '(a b c)))
(print (my-subsetp '(a b d) '(a b c)))
