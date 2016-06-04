;A set X is a proper subset of a set Y if X is a subset of Y but not equal
;to Y. Thus, (A C) is a proper subset of (C A B). (A B C) is a subset of
;(C A B), but not a proper subset of it. Write the PROPER-SUBSETP predicate, which returns T if
;its first input is a proper subset of its second input
(defun proper-subsetp (x y)
  (AND
    (subsetp x y)
    (not
      (equal
        (length x)
        (length y)
        )
      )
    )
  )

(print (proper-subsetp '(a c) '(c a b)))
(print (proper-subsetp '(a b c) '(c a b)))
