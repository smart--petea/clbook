;Find a way to write the TWOMOREP predicate using SUB2 instead of ADD2
(defun sub2 (x) 
  (1- (1- x))
  )

(defun twomorep (x y)
  (equal (sub2 x) y)
  )

(print (twomorep 5 3))
