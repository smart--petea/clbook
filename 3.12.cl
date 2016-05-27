;Write a function ADDLENGTH that takes a list as input and returns a new
;list with the length of the input added onto the front of it. If the
;input is (MOO GOO GAI PAN), the output should be (4 MOO GOO GAI PAN).
; What is the result of (ADDLENGTH (ADDLENGTH '(A B C)))?
(defun addlength(x)
  (cons (length x) x)
  )

(print (addlength '(moo goo gai pan)))
