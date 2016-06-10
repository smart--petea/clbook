;Write a recursive version of NTH. Call it REC-NTH.
(defun rec-nth(n lst)
  (cond
    ((null lst) nil)
    ((zerop n) lst)
    (t (rec-nth (1- n) (cdr lst)))
    )
  )

(print (rec-nth 1 '(1 2 3 4)))
(print (rec-nth 0 '(1 2 3 4)))
(print (rec-nth 10 '(1 2 3 4)))

