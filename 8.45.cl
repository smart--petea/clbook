;Write a function PAREN-DEPTH that returns the maximum depth of
;nested parentheses in a list. (PAREN-DEPTH '(A B C)) should return
;one, whereas TREE-DEPTH would return three. (PAREN-DEPTH '(A B ((C) D) E)) should
;return three, since there is an element C that is nested in
;three levels of parentheses. Hint: This problem can be solved by CAR/CDR recursion,
;but the CAR and CDR cases will not be exactly symmetric.
(defun PAREN-DEPTH(lst)
  (cond
    ((atom lst) 0)
    ((atom (cdr lst)) (+ 1 (paren-depth (car lst))))
    (t (max
         (paren-depth (list (car lst)))
         (paren-depth (cdr lst))
         )
       )
    )
  )

(print (paren-depth '(A B C)))
(print (paren-depth '(A B ((C) D) E)))
