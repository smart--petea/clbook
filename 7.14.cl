;Here is a version of SET-DIFFERENCE written with REMOVE-IF:
(defun my-setdiff(x y)
  (remove-if #'(lambda(e) (member e y)) x)
  )
;Show how the INTERSECTION and UNION functions can be written
;using REMOVE-IF or REMOVE-IF-NOT
(defun my-intersection(x y)
  (remove-if-not
    #'(lambda(e) (member e y))
    x
    )
  )

;(print (my-intersection '(a b c d e) '(f g a b c s)))
(defun my-union(x y)
  (append
    (remove-if ;x - y
      #'(lambda(e) (member e y))
      x
      )
    (remove-if ;y - x
      #'(lambda(e) (member e x))
      y
      )
    (remove-if-not ;y * x
      #'(lambda(e) (member e y))
      x
      )
    )
  )

(print (my-union '(a b c d e f g) '(c d e f g h i)))
