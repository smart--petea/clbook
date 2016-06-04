;Sets are said to be equal if they containe exactly the same elements.
;Order does not matter in a set, so the sets (RED BLUE GREEN) and 
;(GREEN BLUE RED) are considered equal. However, the EQUAL
;predicate does not consider them equal, because it treats them as lists,
;not as sets. Write a SET-EQUAL predicate that returns T if two things
;are equal as sets. (Hint: If two sets are equal, then each is a subset of
;the other.
(defun set-equal(x y)
  (and 
    (subsetp x y)
    (subsetp y x)
    )
  )

(print (set-equal '(a b c) '(a c b)))
(print (set-equal '(a b c d) '(a c b)))
