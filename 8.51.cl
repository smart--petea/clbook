;The simplesct way to write MY-REVERSE, a recursive version of REVERSE,
;is with a helping function plau a cecursive function of two inputs.
;Write this version of MY-REVERSE.
(defun my-reverse(lst)
  (cond
    ((null lst) nil)
    (t (append (my-reverse (cdr lst)) (list (car lst))))
    )
  )

(print (my-reverse '(1 2 3 4 5 6)))

