;Write LOGICAL-OR. Make sure it returns only T or NIL for its result
(defun logical-or (x y)
  (if x t (if y t))
  )

(print (logical-or nil 5))
(print (logical-or nil nil))
(print (logical-or 5 nil))
