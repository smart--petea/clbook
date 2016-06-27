;Write a function called SUBPROP that deletes an element from a set
;stored under a property name. For example, if the sybol ALPHA has
;the list (A B C D E ) as the value of its FOOPROP property, doing
;(SUBPROP 'ALPHA 'D 'FOOPROP) should leave (A B C E) as the
;value of ALPHA's FOOPROP property
(defun subprop(symbl val prop)
  (setf (get symbl prop) (remove val (get symbl prop)))
  )

(setf (get 'alpha 'fooprop ) '(A b C D E))
(subprop 'alpha 'd 'fooprop)
(print (get 'alpha 'fooprop))

