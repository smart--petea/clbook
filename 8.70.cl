;Following is a function FACTORS that returns the list of prime factors
;of a number. It uses the built-in REM function to compute the
;remainder of dividing one number by another. (FACTORS 60) returns
;(2 2 3 5). Try tracing the helping function to see how it works. Write a 
;similar function, FACTOR-TREE, that returns ta factorization tree
;instead. (FACTOR-TREE 60) should return the list (60 2 (30 3 (15 3 5)))
;(defun factors(n)
;  (factors-help n 2)
;  )
;
;(defun factors-help (n p)
;  (cond 
;    ((equal n 1) nil)
;    ((zerop (rem n p)) (cons p (factors-help (/ n p) p)))
;    (t (factors-help n (+ p 1))))
;  )
;
;(print (factors 60))

(defun factors(n)
  (factors-tree n 2)
  )

(defun factors-tree (n p)
  (cond
    ((equal n p) n)
    ((zerop (rem n p)) 
     (cons
       n
       (cons 
         p
         (list (factors-tree (/ n p) p))
         )
       )
     )
    (t (factors-tree n (+ p 1))))
  )

(print (factors 60))
