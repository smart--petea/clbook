;Write ARITH-EVAL, a function that evaluates arithmetic expressions.
;(ARITH-EVAL '(2 + (3 * 4))) should return 14.
(defun arith-eval(expr)
  (cond
    ((atom expr) expr)
    (t 
        (funcall
            (second expr)
            (arith-eval (car expr))
            (arith-eval (third expr))
            )
        )
    )
  )

(print (arith-eval '(2 + (3 * 4))))
