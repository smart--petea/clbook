;Use REVERSE to write a NEXT-TO-LAST function that returns the
;next-to-last element of a list. Write another version using NTH

(defun next-to-last-reverse(x)
  (cadr (reverse x))
  )

(defun next-to-last-nth(x)
  (nth (- (length x) 2) x)
  )

(print (next-to-last-reverse '(1 2 3)))
(print (next-to-last-nth '(1 2 3)))
