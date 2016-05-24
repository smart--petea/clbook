;Show how to write MY-THIRD using SECOND
(defun my-third (x)
  (second (rest x))
  )

(print (my-third '(1 2 3 4 5 6)))
