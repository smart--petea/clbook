;Write PAIRINGS, a function that pairs the element of two lists.
;(PAIRINGS '(A B c) '(1 2 3)) should return ((A !)(B 2)(C 3)). You may assume
;that the two lists will be of equal length.
(defun pairings(right left)
  (cond
    ((null right) nil)
    ((null left) nil)
    (t (append (list (list (car right) (car left))) (pairings (cdr right) (cdr left))))
    )
  )

(print (pairings '(A B C) '(1 2 3)))
