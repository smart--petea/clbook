;Write a function CONSTRAIN that takes three inputs called X, MAX,
;and MIN. If X is less than MIN, it should return MIN; if X is greater
;than MAX, it should return MAX. Otherwise, since X is between MIN
;and MAX, it should return X. (CONSTRAIN 3 -50 50) should return 3.
;(CONSTRAIN 92 -50 50) should return 50. Write one version using COND and another using nested IFs
(defun CONSTRAIN-COND (X MIN MAX)
  (cond ((< X MIN) MIN)
        ((> X MAX) MAX)
        (t X)
        )
  )

(print (CONSTRAIN-COND 3 -50 50))
(print (CONSTRAIN-COND 92 -50 50))
