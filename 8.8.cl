;Write a recursive version of ASSOC. Call it REC-ASSOC.
(defun rec-assoc(x lst)
  (cond
    ((null lst) nil)
    ((eq x (caar lst)) (car lst))
    (t (rec-assoc x (cdr lst)))
    )
  )

(print (rec-assoc 'a '((b 6)(a 5))))
(print (rec-assoc 'a '()))
