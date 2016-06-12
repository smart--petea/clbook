;Write MERGE-LISTS, a function that takes two lists of numbers, each
;in increasing order, as input. The function should return a list that is a
;merger of the elements in its inputs, in order. (MERGE-LISTS '(1 2 6 8 10 12) '(2 3 5 9 13))
;should return (1 2 2 3 5 6 8 9 10 12 13)
(defun merge-lists(left right)
  (cond
    ((null left) right)
    ((null right) left)
    (t
      (if
        (>
            (car left)
            (car right)
            )
        (cons (car right) (merge-lists left (cdr right)))
        (cons (car left) (merge-lists (cdr left) right))
        )
      )
    )
  )

;(print (merge-lists '(1 2) '(1 3)))
(print (merge-lists '(1 2 6 8 10 12) '(2 3 5 9 13)))
