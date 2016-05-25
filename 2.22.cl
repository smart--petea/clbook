;Suppose we wanted to make a function called DUO-CONS that added
;two elements to the front of a list. Remember that the regular CONS
;function adds only one element to a list. DUO-CONS would be a function of three inpus. 
;For example, if the inputs were the symbol PATRICK, the symbol SEYMOUR, and the list (MARVIN), DUO-CONS
;would return the list (PATRIC SEYMOUR MARVIN). Show how to write the DUO-CONS function
(defun duo-cons (x1 x2 lst)
  (cons x1 (cons x2 lst))
  )

(print (duo-cons 1 2 '(a b)))
