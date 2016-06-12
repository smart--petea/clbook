;Write a function SUM-TREE that returns the sum of all the numbers
;appearing in a tree. Nonnumbers should be ignored.
;(SUM-TREE '((3 bears) (3 bowls) ( 1 girl))) should return seven
(defun sum-tree(lst)
  (cond
    ((null lst) 0)
    (t
      (+
        (sum-tree (cdr lst))
        (cond
          ((numberp (car lst)) (car lst))
          ((listp (car lst)) (sum-tree (car lst)))
          (t 0)
          )
        )
      )
    )
  )

(print (sum-tree '((3 bears)(3 bowls)(1 girl))))
