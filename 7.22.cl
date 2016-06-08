;Write a function NOT-NONE-ODD that returns T if it is not the case
;that a list of numbers contains no odd elements
(defun not-none-odd(x)
  (every
    #'(lambda(e)
        (not
          (oddp e)
          )
        )
    x
    )
  )

(print (not-none-odd '(0 2 4 0)))
