;Another way to solve the problem of counting upward is to add an
;element to the end of the list with each recursive call instead of adding
;elements to the beginning. This approach doesn't require a helping
;function. Write this version of COUNT-UP
(defun count-up(n)
  (cond
    ((zerop n) '(0))
    (t (append (count-up (1- n)) (list n)))
    )
  )

(print (count-up 5))
