;Write MY-INTERSECTION, a recursive version of the INTERSCETION function
(defun my-intersection(right left)
  (cond
    ((OR (null right) (null left)) nil)
    ((member (car right) left) (cons (car right) (my-intersection (cdr right) left)))
    (t (my-intersection (cdr right) left))
    )
  )

(print (my-intersection '(a b c d e) '(c d e f g)))
