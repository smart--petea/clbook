;Write a recursive function HUGE that raises a number to its own
;power. (HUGE 2) should return 2^2, (HUGE 3) should return 3^3, 
;(HUGE 4) should return 4^4, and so on. Do not use reduce
(defun my-pow(x pow)
  (if
    (zerop pow)
    1
    (* 
      x
      (my-pow x (1- pow))
      )
    )
  )

(defun huge(n)
    (my-pow n n)
    )

(print (huge 2))
(print (huge 3))
(print (huge 4))
