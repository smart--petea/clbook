;Write a predicate TWOMOREP that returns T if its first input is exactly
;two more than its second input. Use the ADD2 function in your definition
;of TWOMOREP
(defun ADD2(x)
  (1+ (1+ x))
  )


(defun TWOMOREP(x y)
  (equal x (ADD2 y))
  )

(print (TWOMOREP 5 3))
