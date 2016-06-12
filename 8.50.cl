;Write SUBLISTS, a function that returns the successive sublists of a list.
;(SUBLISTS '(FEE FIE FOE)) should return ((FEE FIE (FOE) (FIE FOE)(FOE)).
(defun sublists(lst)
  (cond
    ((null lst) nil)
    (t (append (list lst) (sublists (cdr lst))))
    )
  )

(print (sublists '(FEE FIE FOE)))
