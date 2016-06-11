;Consider the following version of ANY-7-P, a recursive function that
;searches a list for the number seven:
(defun any-7-p(x)
  (cond 
    ((equal (first x) 7) t)
    (t (any-7-p (rest x)))
    )
  )
;give a sample input for which this function will work correctly.
(print (any-7-p '(5 7 8)))

;give one for which the function will recurse infinitely
(print (any-7-p '(6 6 8)))
