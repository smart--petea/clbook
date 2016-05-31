;Write versions of LOGICAL-AND using IF and COND instead of AND
(defun logical-and (x y) ( and x y t))
(defun logical-and-if (x y) 
  (if x (if y t))
  )
(defun logical-and-cond (x y)
  (cond ((not x) nil)
        (y t)
        )
  )



(print (logical-and 5 6))
(print (logical-and-if 5 6))
(print (logical-and-cond 5 6))
