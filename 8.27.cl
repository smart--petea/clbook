;Write SQUARE-LIST, a recursive function that takes a list of numbers
;as input and returns a list of their squares. (SQUARE-LIST '(3 4 5 6))
;should return (9 16 25 36)
(defun square-list(lst)
  (cond
    ((null lst) nil)
    (t
      (cons
        (* (car lst) (car lst))
        (square-list (cdr lst))
        )
      )
    )
  )

(print (square-list '(3 4 5 6)))
