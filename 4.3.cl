;Recall the primitive function NOT: it returns NIL for a true input and
;T for a false one. Suppose Lisp didn't have a NOT primitive. Show
;how to write NOT using just IF and constants (no other functions). Call
;your function MY-NOT
(defun my-not(x)
  (if x nil t)
  )

(print (my-not 5))
(print (my-not ()))
