;Write a function that takes a list such as (UP DOWN UP UP) and
;"flips" each element, returning (DOWN UP DOWN DOWN). Your
;function should include a lambda expression that knows how t flip an individual element, plus an applicative operator
;to do this to every
;element of the list.
(defun flips(x)
  (if
    (eq x 'UP)
    'DOWN
    'UP
    )
  )

(print (mapcar #'flips '(UP DOWN UP UP)))

