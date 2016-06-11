;Suppose we wanted to modify COUNT-DOWN so that the list it constructs
;endss in zero. For example, (COUNT-DOWN 5) whould
;produce (5 4 3 2 1 0). Show two ways this ca be done
(defun count-down-1(n)
  (cond
    ((zerop n) '(0))
    (t (cons n (count-down-1 (1- n))))
    )
  )

(print (count-down-1 5))

(defun count-down-2(n)
  (cond
    ((equal n -1) nil)
    (t (cons n (count-down-2 (1- n))))
    )
  )

(print (count-down-2 5))
