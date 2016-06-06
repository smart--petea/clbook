;Write a function to swap the first and last elements of any list. (SWAP-
;FIRST-LAST '(YOU CANT BUYE LOVE)) should return (LOVE CANT BUYE YOU)
(defun swap-first-last(x)
  (cons
    (car (last x))
    (reverse
      (cdr
        (reverse x)
        )
      )
    )
  )

(print (swap-first-last '(YOU CANT BUY LOVE)))
