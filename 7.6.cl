;Write a lambda expression that returns T if its input is T or NIL, but
;NIL for any other input
(print
  (mapcar
    #'(lambda(x)
         (OR
           (eq x t)
           (eq x nil)
           )
         )
    '(1 t nil 'a 'b)
    )
  )
