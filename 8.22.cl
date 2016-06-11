;Write a recursive function ALL-EQUAL that returns T if the first
;element of a list is equal to the second, the cecond is equal to the third,
;the third is equal to the fourth, and so on. (ALL-EQUAL '(I I I I))
;should return T. (ALL-EQUAL '(I I E I)) should return NIL. ALL-EQUAL
;should return T for lists with less than two elements. Does this
;problem require augmentation? Which template will you use to solve it?
(defun all-equal(lst)
  (cond
    ((< (length lst) 2) t)
    ((not (equal (first lst) (second lst))) nil)
    (t (all-equal (cdr lst)))
    )
  )

(print (all-equal '(I I I I)))
(print (all-equal '(I I E I)))
