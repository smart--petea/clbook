;Suppose we want to tell as quickly as possible whether one list is
;shorter than another. If one list has five elements and the other has a 
;million, we don't want to have to go throught all one million cons cells
;before deciding that the second list is longer. Sw we must not call 
;LENGTH on the two lists. Write a recursive function COMPARE-LENGTHS
;that takes two lists as input and returns one of the following symbols:
;SAME-LENGTH, FIRST-IS-LONGER, or SECOND-IS-LONGER. Use triple-test simultaneos recursion.
;Hint: If x is shorter than y and both are nonempty, the (REST x) is shorter than (REST x)
(defun compare-lengths(frst scnd)
  (cond
    ((AND
       (null frst)
       (null scnd)
       )
     'SAME-LENGTH
     )
    ((null frst) 'SECOND-IS-LONGER)
    ((null scnd) 'FIRST-IS-LONGER)
    (t (compare-lengths (cdr frst) (cdr scnd)))
    )
  )

(print (compare-lengths '(a b c) '(a b)))
(print (compare-lengths '(b c) '(a b c d)))
(print (compare-lengths '(b c d e) '(a b c d)))
