;Show how to write CHECK-ALL-ODD using DO
(defun check-all-odd(lst)
  (do* ((loc-lst lst)
       (el (pop loc-lst) (pop loc-lst)))
    ((null loc-lst) t)
    (if (not (oddp el)) (return nil))
    )
  )

(print (check-all-odd '(1 2 3 4 5)))
(print (check-all-odd '( 2  4 6 8)))
(print (check-all-odd '( 1 3 7 9)))
