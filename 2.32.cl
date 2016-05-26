;Write a UNARY-GREATERP predicate, analogus to the > predicate on ordinary numbers
(defun unary-greaterp (x y)
  (> (length x) (length y))
  )

(print (unary-greaterp '(x x x x) '(x x x)))
