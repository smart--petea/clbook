;The expression (MY-NTH 5 '(A B C)) and (MY-NTH 1000 '(A B C))
;both run off the end of the list. and hence produce a NIL result.
;Yet the second expression takes quite a bit longer to execute than the first.
;Modify MY-NTH so that the recursion stops as soon the function runs
;off the end of the list
(defun my-nth (n x)
  (cond
    ((null x) nil)
    ((zerop n) (first x))
    (t (my-nth (- n 1) (rest x)))
    )
  )
