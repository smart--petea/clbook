;Write a function ADD-VOWERLS that takes a set of letters as input and
;adds the vowels (A E I O U) to the set. For example, calling ADD-VOWELS
;on the set (X A E Z) should produce the set (X A E Z I O U), except that the exact order
;of the elements in the result is
;unimportant
(defun add-vowels(x)
  (union x '(a e i o u))
  )

(print (add-vowels '(x a e z)))
