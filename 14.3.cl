;Write a SET-NIL macro that sets a variable to NIL
(defmacro set-nil(var)
  (list 'setf var nil)
  )

(setf a 5)
(set-nil a)
(print a)
