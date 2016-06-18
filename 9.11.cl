;Write a function DOT-PRIN1 that takes a list as input and prints it in
;dot notation. DOT-PRIN1 will print parentheses by (FORMAT T "(")
;and (FORMAT T ")"), and dots by (FROMAT T " . "), and will
;call itself recursively to print lists within lists. DOT-PRIN1 should
;return NIL as its result. Try (DOT-PRIN1 '(A (B) C)) and see if your
;output matches the result in the table above. Then try (DOT-PRIN1 '((((A)))).
(defun dot-prin1(lst)
  (cond
    ((atom lst) (format t "~S" lst))
    (t (OR
         (format t "(")
         (dot-prin1 (car lst))
         (format t " . ")
         (dot-prin1 (cdr lst))
         (format t ")")
         )
       )
    )
  )

;(dot-prin1 '(A (B) C))
(dot-prin1 '(A . B))

