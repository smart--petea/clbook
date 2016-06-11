;Write COUNT-DOWN, a function that counts down from n using list-consing recursiion.
;(COUNT-DOWN 5) should produce the list (5 4 3 2 1)
(defun count-down(n)
  (cond
    ((zerop n) nil)
    (t (cons n (count-down (1- n))))
    )
  )

(print (count-down 5))
