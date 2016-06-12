;Write MY-SUBST, a recursive version of the SUBST function
(defun my-subst(x y lst)
  (cond
    ((null lst) nil)
    ((equal x (car lst)) (cons y (my-subst x y (cdr lst))))
    (t (cons (car lst) (my-subst x y (cdr lst))))
    )
  )

(print (my-subst 'x 'y '(a b x x z c)))
