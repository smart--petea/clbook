;Write a function that takes two inputs, X and K, and returns the first
;number in the list X that is roughly equal to K. Let's say that ''roughly
;equal'' means no less that K-10 and no more than K+10
(defun my-foo(x k)
  (find-if
    #'(lambda (y)
        (AND
          (>
            y
            (- k 10)
            )
          (< 
            y
            (+ k 10)
            )
          )
        )
    x
    )
  )

(print (my-foo '(-100 10 15 2 3 -5 4 8 -9 11) 5))

