;Write a macro SET-MUTUAL that takes two variable names as input
;and expands into an expression that sets each variable to the name of
;the other. (SET-MUTUAL A B) should set A to 'B, and B to 'A
(defmacro set-mutual(x y)
  `(let ((x-temp ,x))
     (setf ,x ',y)
     (setf ,y x-temp)
     )
  )

(setf a 'a)
(setf b 'b)
(set-mutual a b)
(print a)
(print b)
