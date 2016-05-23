;write a predicate NOT_ONEP that returns T if its input is anything other than one
(defun not-onep (x)
  (not (equal x 1))
  )

(print (not-onep 2))
