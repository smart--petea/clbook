;Write an ADD1 function that adds one to its input. The write an expression
;to add one to each element of the list (1 3 5 7 9).
(defun add1(x)
  (1+ x)
  )

(print (mapcar #'add1 '(1 3 5 7 9)))
