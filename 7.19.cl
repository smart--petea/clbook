;Write a function ALL-ODD that returns T if every element of a list of
;numbers is odd
(defun all-odd(x)
  (every #'oddp x)
  )

(print (all-odd '(5 3 1)))
(print (all-odd '(5 3 1 2)))
