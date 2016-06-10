;For x a nonnegative integer and y a positive integer, x+y equals
;x+1+(y-1). If y is zero the x+y equals x. Use these equations to build
;a recursive version of + called REC-PLUS out of ADD1, SUB1,
;COND and ZEROP. You'll have to write ADD1 and SUB1 too.
(defun add1(x)
  (1+ x)
  )

(defun sub1(x)
  (1- x)
  )

(defun rec-plus(x y)
  (cond
    ((zerop y) x)
    (t
      (+
        (add1 x)
        (sub1 y)
        )
      )
    )
  )

(print (rec-plus 5 6))
(print (rec-plus 5 0))
