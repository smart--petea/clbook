;What C..R name does Lisp use for the function that returns the fourth element of a list?
(defun fourthh(x)
  (cadddr x)
  )

(print (fourthh '(1 2 3 4 5 6 7)))
