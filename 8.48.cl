;Write a recurswvie function BURY that buries an item under n levels of
;parentheses. (BURY 'FRED 2) should return ((FRED)), while (BURY 'FRED 5)
;shuld return (((((FRED))))). Which recursion template did you use?
(defun bury(smbl n)
  (cond
    ((zerop n) smbl)
    (t (list (bury smbl (1- n))))
    )
  )

(print (bury 'FRED 2))
(print (bury 'FRED 21))
