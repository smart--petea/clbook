;Write a function NOT-ALL-ODD that returns T if not every element of
;a list of numbers is odd
(defun not-all-odd(x)
  (not
    (every #'oddp x)
    )
  )

(print (not-all-odd '(1 2 3 4)))
(print (not-all-odd '(1 5 3 7)))

