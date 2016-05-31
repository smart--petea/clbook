;Write versions of the GTEST function using IF and COND
(defun gtest-if(x y)
  (if (> x y) t 
    (if (zerop x) t
      (if (zerop y) t
        )
      )
    )
  )

(defun gtest-cond(x y)
  (cond ((> x y) t)
        ((zerop x) t)
        ((zerop y) t)
        )
  )

(print (gtest-cond 5 4))
(print (gtest-if 5 4))
