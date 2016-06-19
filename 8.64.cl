;Write a TREE-FIND-IF operator that returns the first non-NIL atom of
;a tree that satisfies a predicate. (TREE-FIND-IF #'ODDP '((2 4)(5 6) 7)) should return 5
(defun tree-find-if(fn tree)
  (cond
    ((null tree) nil)
    ((listp tree)
        (OR
          (tree-find-if fn (car tree)) (tree-find-if fn (cdr tree))
          )
        )

    ((funcall fn tree) tree)
    (t nil)
    )
  )

(print (tree-find-if #'oddp '((2 4)(5 6))))
