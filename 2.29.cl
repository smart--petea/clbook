;Write a function UNARY-ADD1 that increases a unary number by one
(defun unary-add1(x)
  (cons 'x x)
  )

(print (unary-add1 '(x x)))
