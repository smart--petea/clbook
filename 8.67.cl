;Write a predicate LEGALP that returns T if its input is a legal
;arithmetic expression. For example, (LEGALP 4) and (LEGALP '((2 * 2) - 3)) should return T.
;(LEGALP NIL) and (LEGALP '(a b c d)) 
;should return NIL
(defun legalp(expr)
  (cond
    ((null expr) nil)
    ((atom expr) (if (numberp expr) t nil))
    ((NOT (equal (length expr) 3)) nil)
    ((NOT (member (second expr) '(- + / *))) nil)
    (t (AND (legalp (car expr)) (legalp (third  expr))))
    )
  )

(print (legalp 4))
(print (legalp '((2 * 2) - 3)))
(print (legalp '(a b c d)))
(print (legalp nil))
