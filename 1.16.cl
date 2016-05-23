;write the predicate not-plusp that returns T if its input is not greater than zero
(defun not-plusp (x)
  (not (> x 0))
)

(print (not-plusp 0))
