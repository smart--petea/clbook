;Write a function NTACK that destructively tacks a symbol onto a list.
;(NTACK '(FEE FIE FOE) 'FUM) should return (FEE FIE FOE FUM)
(defun ntack(lst symbl)
  (nconc lst (list symbl))
  )

(setf x '(fee fie foe))
(ntack x 'fum)
(print x)

