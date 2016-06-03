;A palindrome is a sequence that reads the same forwards and backwards. The
;list (A B C D C B A) is a palindrome.; (A B C A B C) is not.
;Write a function PALINDROMERP that returns T if its input is a 
;palindrome
(defun palindromerp(x)
  (equal x (reverse x))
  )

(print (palindromerp '(A B C D C B A)))
(print (palindromerp '(A B C A B C)))
