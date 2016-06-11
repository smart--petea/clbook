;Write a function COUNT-ATOMS that returns the number of atoms in a tree.
;(COUNT-ATOMS '(A (B) C)) should return five, since in
;addition to A, B, and C there are two NILs in the tree
(defun count-atoms(lst)
  (cond
    ((null lst) 0)
    (t 
      (+
        (if
          (atom (car lst))
          1
          (count-atoms (car lst))
          )
        (if
          (atom (cdr lst))
          1
          (count-atoms (cdr lst))
          )
       )
      )
    )
  )

(print (count-atoms '(a (b) c)))
(print (count-atoms '()))
