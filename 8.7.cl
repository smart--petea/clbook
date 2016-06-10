;Write a recursive version of MEMBER. Call it REC-MEMBER so you
;don't redefine the buit-in MEMBER function.
(defun rec-member(x y)
  (if
    (null y)
    y
    (if
        (equal
        (car y)
        x
        )
        y
        (rec-member 
        x
        (cdr y)
        )
    )
  )
)

(print (rec-member 'x '(a b x r s)))
(print (rec-member 'x '()))
