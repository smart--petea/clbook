;Write a function FIND-NESTED that returns the first element of a list
;that is itself a non-NIL list
(defun find-nested(x)
  (find-if #'(lambda(y)
                (AND
                    (not (eq y nil))
                    (listp y)
                    )
                )
           x
           )
  )

(print (find-nested '(1 2 nil (a b) (c))))
