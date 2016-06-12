;Write LARGEST-EVEN, a recursive function that returns the largest
;eve number in a list of nonnegative integers. 
;(LARGEST-EVEN '(6 2 4 3)) should return four.
;(LARGEST-EVEN NIL) should return zero.
;USE the built-in MAX function, which returns the largest of its inputs
(defun largest-even-recursive(lst)
  (cond
    ((null lst) 0)
    ((evenp (car lst)) (max (car lst) (largest-even-recursive (cdr lst))))
    (t (largest-even-recursive (cdr lst)))
    )
  )

(defun largest-even(lst)
  (cond
    ((null lst) nil)
    (t (largest-even-recursive lst))
    )
  )

(print (largest-even '(5 2 4 3)))
(print (largest-even nil))
