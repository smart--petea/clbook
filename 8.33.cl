;Write MY-REMOVE, a recursive version of the REMOVE function.
(defun my-remove(x lst)
    (cond
      ((null lst) nil)
      ((equal x (car lst)) (my-remove x (cdr lst)))
      (t (cons (car lst) (my-remove x (cdr lst))))
      )
    )

(print (my-remove 5 '(1 2 3 4 5 1 2 3 4 5)))
