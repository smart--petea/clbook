;Show how to write TWOP in terms of ZEORP and SUB2
(defun sub2(x)
  (1- (1- x))
)

(defun twop(x)
  (zerop (sub2 x))
)

(print (twop 2))
