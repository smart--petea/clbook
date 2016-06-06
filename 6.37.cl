;ROTATE-LEFT and ROTATE-RIGHT are function that rotate the elements
;of a list, (ROTATE-LEFT '(A B C D E F)) returns (B C D E A), 
;whereas ROTATE-RIGHT returns (E A B C D).
;Write these functions
(defun rotate-right (x)
  (append
    (last x)
    (reverse 
      (cdr 
        (reverse x)
        )
      )
    )
  )


(print (rotate-right '(A B C D E F)))

(defun rotate-left(x)
  (append
    (cdr x)
    (list (car x))
    )
  )

(print (rotate-left '(A B C D E F)))
