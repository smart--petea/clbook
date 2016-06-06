;Show how to transform the list (A B C D) into a table so that the
;ASSOC function using the table gives the same result as MEMBER
;using the list.
(setf lst '(A B C D))
(setf tbl '(
            (A B C D)
            (B C D)
            (C D)
            (D)
            )
      )

(print (equal (member 'D lst) (assoc 'D tbl)))
