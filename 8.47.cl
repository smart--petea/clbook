;Write MAKE-LOAF, a function that returns a loaf of size
;N. (MAKE-LOAF 4) should return (X X X X). Use IF instead of COND
(defun make-loaf(n)
  (if
    (zerop n)
    nil
    (append '(X) (make-loaf (1- n)))
    )
  )

(print (make-loaf 4))
