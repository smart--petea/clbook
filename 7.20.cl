;Write a function NONE-ODD that returns T if every element of a list of
;numbers is not odd
(defun none-odd(x)
  (every 
    #'(lambda(e)
        (not
          (oddp e)
          )
        )
    x
    )
  )

(print (none-odd '(2 4 6 0)))
(print (none-odd '(2 3 6 0)))
