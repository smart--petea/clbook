;A truth function is a function whose inputs and output are truth values,
;that is, true or false. NOT is a truth function. (Even though NOT accepts other inputs besides T or NIL, it only cares
;if its input is true or
;not.) Write XOR, the exclusive-or truth function, which returns T when
;one of its inputs is NIL and the other is T, but returns NIL when both are
;NIL or both are T. (Hint: This is easier than it sounds
(defun xorr(x y)
  (not
    (equal 
        (not x)
        (not y)
        )
    )
  )

(print (xorr 5 6))
(print (xorr () nil))
(print (xorr t nil))
