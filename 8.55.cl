;Write EVERY-OTHER, a recursive function that returns every other
;element of a list - the first, third, fifth, and so on.
;(EVERY-OTHER '(A B C D E F G)) should return (A C E G).
;(EVERY-OTHER '(I CAME I SAW I CONZUERED)) should return (I I I))
(defun every-other(lst)
  (cond
    ((null lst) nil)
    (t (cons (car lst) (every-other (cddr lst))))
    )
  )

(print (every-other '(A B C D E F G)))
(print (every-other '(I CAME I SAW I CONQUERED)))
