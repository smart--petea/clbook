;Write EMPHISIZE3, which is like EMPHASIZE2 but adds the symbol
;VERY onto the list if it doesn't know how to emphasize it. For
;example, EMPHASIZE3 of (LONG DAY) should produce (VERY
;(LONG DAY). What does EMPHASIZE3 of(VERY LONG DAY)
;produce?
(defun emphasize3 (x)
  (cond ((equal (first x) 'good) (cons 'great (rest x)))
        ((equal (first x) 'bad) (cons 'awful (rest x)))
        (t (cons 'very x))
        )
  )

(print (emphasize3 '(long day)))
