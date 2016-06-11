;Write MY-SET-DIFFERENCE, a recursive version of the SET-DIFFERENCE function
(defun my-set-difference(right left)
  (cond
    ((null right) nil)
    ((null left) right)
    ((member (car right) left) (my-set-difference (cdr right) left))
    (t (cons (car right) (my-set-difference (cdr right) left)))
    )
  )

(print (my-set-difference '(a b c d e f) '(c d e)))
