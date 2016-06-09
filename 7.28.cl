;Show how to write EVERY given REMOVE-IF
(defun my-every(foo lst)
  (not
    (remove-if
        foo
        lst
        )
    )
  )


(print (every #'oddp '(1 5 3 7)))
(print (my-every #'oddp '(1 5 3 7)))

