;Show how to write the expression (AND X Y Z W) using COND
;instead of AND. The show how to write it using nested IFs instead of AND

(defun my-if (x y z w)
  (if x (if y (if z ( if w w))))
  )

(defun my-cond (x y z w)
  (cond ((not x) nil)
        ((not y) nil)
        ((not z) nil)
        ((not w) nil)
        (t w)
        )
  )

(print (my-if 1 2 3 4))
(print (my-if 1 nil 3 4))

(print (my-cond 1 2 3 4))
(print (my-cond 1 nil 3 4))
