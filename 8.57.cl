;Write LEFT-HALF, a recursive function in two parts that returns the
;first n/2 elements of a list of length n. Write your function so that the
;list doews not have to be of even length.
;(LEFT-HALF '(A B C D E)) should return (A B C)
;(LEFT-HALF '(1 2 3 4 5 6 7 8)) should return (1 2 3 4). 
;You may use LENGTH but not REVERSE in your definition
(defun left-half-recursive(lst n)
  (if
    (zerop n)
    nil
    (cons (car lst) (left-half-recursive (cdr lst) (1- n)))
    )
  )

(defun left-half(lst)
  (if
    (oddp (length lst))
    (left-half-recursive lst (/ (1+ (length lst)) 2))
    (left-half-recursive lst (/ (length lst) 2))
    )
  )

(print (left-half '(a b c d e)))
(print (left-half '(1 2 3 4 5 6 7 8)))
