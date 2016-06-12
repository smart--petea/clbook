;Write a function TREE-DEPTH that returns the maximum depth of a
;binary tree. (TREE-DEPTH '(A . B)) should return one. 
;(TREE-DEPTH '((A B C d))) should return five. and
;(TREE-DEPTH '((A . B) . (C . D))) should return two
(defun tree-depth(lst)
  (cond
    ((atom lst) 0)
    (t 
      (+
        1
        (max
          (tree-depth (car lst))
          (tree-depth (cdr lst))
          )
        )
      )
    )
  )

(print (tree-depth '(A . B)))
(print (tree-depth '((A B C D))))
(print (tree-depth '((A . B) . (C . D))))
