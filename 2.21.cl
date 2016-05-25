;Write a function that takes four inputs and returns a two-element nested list.
;The first element should be a list of the first two inputs, and the second element a list of the last two inputs.
(defun myfoo (x1 x2 x3 x4)
  (list
    (list x1 x2)
    (list x3 x4)
    )
  )

(print (myfoo 1 2 3 4))
