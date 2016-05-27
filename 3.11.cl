;Define a predicate called LONGER-THAN that takes two lists as input
;and returns T if the first list is longer than the second
(defun longer-than(x y)
  (> 
    (length x)
    (length y)
    )
  )

(print (longer-than '(x x x) '(x x)))
