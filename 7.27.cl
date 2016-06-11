;Show how to write FIND-IF given REMOVE-IF-NOT
(defun my-find-if(foo lst)
  (car
    (remove-if-not
      foo
      lst
    )
  )
  )

(print (my-find-if #'(lambda(x) (> x 2)) '(0 1 2 3)))
