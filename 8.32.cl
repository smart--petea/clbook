;Write the function SUM-NUMERIC-ELEMENTS, which adds up all
;the numbers in a list and ignores the non-numbers. 
;(SUM-NUMERIC-ELEMENTS '(3 BEARS 3 BOWL AND 1 GIRL)) should return seven
(defun sum-numeric-elements(lst)
  (cond
    ((null lst) 0)
    ((symbolp (car lst)) (sum-numeric-elements (cdr lst)))
    (t (+ (car lst) (sum-numeric-elements (cdr lst))))
    )
  )

(print (sum-numeric-elements '(3 bears 3 bowls and 1 girl)))
