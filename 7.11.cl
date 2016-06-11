;Write a function to pick out those numbers in a list that are greater than
;one and less than five
(defun my-foo(y)
  (remove-if-not
    #'(lambda(x) 
        (AND
          (> x 1)
          (< x 5)
          )
        )
    y
    )
  )

(print (my-foo '(1 -1 2 3 10 -15 5 4 3)))

