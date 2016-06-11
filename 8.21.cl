;Write a recursive function ADD-NUMS that adds up the numbers N,
;N-1, N-2, and so on, down to 0, and returns the result. For example,
;(ADD-NUMS 5)  should compute 5+4+3+2+1+0, which is 15
(defun add-nums(n)
  (cond
    ((zerop n) 0)
    (t (+ n (add-nums (1- n))))
    )
  )

(print (add-nums 5))
