;Write a function MY-BUTLAST that returns a list with the last element
;removed. (MY-BUTLAST '(ROSES ARE RED)) should return the list
;(ROSES ARE). (MY-BUTLAST '(G A G A)) should return (G A G)
(defun my-butlast(x)
  (reverse (cdr (reverse x)))
  )

(print (my-butlast '(G A G A)))
