;TWO-DEEPER is a function that surrounds its input with two levels of parentheses.
;TWO-DEEPER of MOO is ((MOO)). TWO-DEEPER of (BOW WOE) si
;(((BOW WOW))). SHOW how to write TWO-DEEPER using LIST. Write another version using cons
(defun two-deeper-list(x)
  (list (list x))
  )

(defun two-deeper-cons(x)
  (cons (cons x nil) nil)
  )

(print (two-deeper-list 'x))
(print (two-deeper-cons 'x))
