;Write a predicate called GEQ that returns T if its first input
;is greater or equal to its second input
(defun geq (x y)
  (or 
    (> x y)
    (equal x y)
    )
  )

(print (geq 5 4))
(print (geq 5 5))
(print (geq 5 6))
