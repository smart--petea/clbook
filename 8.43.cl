;Write FLATTEN, a function that returns all the elements of an
;arbitrarily nested list in a single-level list. (FLATTEN '((A B (R)) A C (A D ((A (B)) R) A))) should return (A B R A C
;A D A B R A);
(defun flatten(lst)
  (cond
    ((null lst) nil)
    ((listp (car lst)) (append (flatten (car lst)) (flatten (cdr lst))))
    (t (cons (car lst) (flatten (cdr lst))))
    )
  )

(print (flatten '((A B (R)) A C (A D ((A (B))) R) A)))
