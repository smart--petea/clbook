;Show how to write MY-THIRD using FIRST and two RESTs
(defun my-third (x)
  (FIRST (REST (REST x)))
  )

(print (my-third '(1 2 3 4 5)))
