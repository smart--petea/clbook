;Write a function that squares a number if it is odd and positive, doubles
;it if is odd and negative, and otherwise divides the number by 2
(defun myfoo(x)
  (cond 
    ((and (oddp x) (> x 0)) (* x x))
    ((and (oddp x) (< x 0)) (* x 2))
    (t (/ x 2))
    )
  )

(print (myfoo 9)) ;81
(print (myfoo -9));-18
(print (myfoo -8));-4
(print (myfoo 8));4
    
