;Write a recursive version of CHECK-ALL-ODD. It should produce the
;same messages and the same result as the preceding iterative version

(defun check-all-odd(list-of-numbers)
  (cond
    ((null list-of-numbers) t)
    ((oddp (car list-of-numbers)) (check-all-odd (cdr list-of-numbers)))
    (t nil)
    )
  )

(print (check-all-odd '(1 3 5)))
(print (check-all-odd '(1 3 4 5)))
