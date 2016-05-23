;Write a MORE-THAN-HALF-P predicate that returns T if its first input is more
;than half of its second input
(defun more-than-halp-p (x y)
  (>
    x
    (/ y 2)
  )
)

(print (more-than-halp-p 5 2))
