;Suppose we want to solve a problem similar to the preceding one, but
;instead of testing whether an element is zero, we want to test whether it
;is greater than five. We can't use > directly for this because > is a
;function of two inputs; MAPCAR will only give it one input. Show
;how first writing a one-input function called GREATER-THAN-FIVE-P 
;would help
(defun greater-than-five-p(x)
  (> x 5)
  )

(print (mapcar #'greater-than-five-p '(2 0 3 4 10 -5 -6)))
