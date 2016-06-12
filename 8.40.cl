;Write COUNT-CONS, a function that returns the number of cons cells
;in a tree. (COUNT-CONS '(FOO)) should return one. (COUNT-CONS '(FOO BAR)) should return two.
;(COUNT-CONS '((FOO))) should also return two, since the list ((FOO)) requires two cons cells
;(COUNT-CONS 'FRED) should return zero
(defun count-cons(lst)
  (cond
    ((OR (atom lst) (null lst)) 0)
    (t (+
         1
         (count-cons (car lst))
         (count-cons (cdr lst))
         )
       )
    )
  )


(print (count-cons '(foo bar)))
(print (count-cons '(FOO)))
(print (count-cons '((foo))))
(print (count-cons 'FRED))
