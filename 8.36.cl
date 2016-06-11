;The function COUNT-ODD counts the number of odd elements in a list
;of numbers; for example, (COUNT-ODD '(4 5 6 7 8)) should return
;two. WHOW how to write COUNT-ODD using conditional 
;augmentation. The write another version of COUNT-ODD using the
;regulat augmenting recursion template. (To do this you will need to
;write a conditional expression for the augmentation value)
(defun count-odd(lst)
  (cond
    ((null lst) 0)
    ((oddp (car lst)) (1+ (count-odd (cdr lst))))
    (t (count-odd (cdr lst)))
    )
  )

(print (count-odd '(4 5 6 7 8)))
