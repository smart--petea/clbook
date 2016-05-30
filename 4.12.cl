;Write a function CYCLE that cyclically counts from 1 to 99. CYCLE
;called with an input of 1 shoul return 2, with an input of 2 should
;return 3, with an input of 3 should return 4, and so on. With an input of 99
;CYCE should return 1. That's the cyclical part. Do not try to
;solve this with 99 COND clauses!
(defun cycle (x)
  (cond ((< x 99) (1+ x))
        (t 0)
        )
  )

(print (cycle 5))
