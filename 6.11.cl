;Write a function MAKE-PALINDROME that meakes a palindrome out
;of a list for example give (YOU AND ME) as input it should return
;(YOU AND ME ME AND YOU
(defun make-palindrome(x)
  (append x (reverse x))
  )

(print (make-palindrome '(YOU AND ME)))
