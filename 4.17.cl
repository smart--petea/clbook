;Write a predicate that returns T if the first input is either BOY or GIRL
;and the second input is CHILD, or the first input is either MAN or
;WOMAN and the second input is ADULT
(defun myfoo(x)
  (cond ((or
    (and 
      (or 
        (equal (first x) 'BOY)
        (equal (first x) 'GIRL)
        )
      (equal (second x) 'CHILD)
      )
    (and
      (or
        (equal (first x) 'MAN)
        (equal (first x) 'WOMAN)
        )
      (equal (second x) 'ADULT)
      )
    ) t))
  )

(print (myfoo '(BOY CHILD)))
(print (myfoo '(GIRL CHILD)))
(print (myfoo '(MAN ADULT)))
(print (myfoo '(WOMAN ADULT)))
(print (myfoo '(WOMN ADULT)))
