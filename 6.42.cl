;Write a function called ROYAL-WE that changes every occurence of
;the symbol I in a list to the symbol WE. Calling this function on the list
;(IF I LEARN LISP I WILL BE PLEASED) should return the list (IF
;WE LEARN LISP WE WILL BE PLEASED).
(defun royal-me(x)
  (subst 'we 'i x)
  )

(print (royal-me '(if i learn lisp i will be pleased)))
