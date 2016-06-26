;Write a predicate HASPROP that returns T or NIL to indicate wheteher a
;symbol has a particular property, independent of the value of that
;property. Note: If symbol A has a property FOO with value NIL,
;(HASPROPE 'A 'Foo) should still return T.
(defun hasprop(symbl prop)
  (do
    ( (smbl-list (symbol-plist symbl) (cddr smbl-list)))
    ((null smbl-list) nil)
    (when (equal prop (car smbl-list)) (return t))
    )
  )

(print (hasprop 'a 's))
(setf (get 'a 's) nil)
(print (hasprop 'a 's))
