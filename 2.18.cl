;Write a function that takes any two inputs and makes a list of them using CONS
(defun myfoo(x y)
  (cons x (cons y nil))
  )

(print (myfoo 5 6))
