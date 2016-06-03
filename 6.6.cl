;Use the LAST function to write a function called LAST-ELEMENT
;that returns the last element of a list instead of the last cons cell. Write
;another version of LAST-ELEMENT using REVERSE instead of
;LAST. Write another version using NTH and LENGTH
(defun last-element-last(x)
  (first (last x))
  )

(defun last-element-reverse(x)
  (first (reverse x))
  )

(defun last-element-nth(x)
  (nth (cond 
         ((equal (length x) 0) 0) 
         (t (1- (length x)))
         )
       x)
  )

(print (last-element-last '(a b c)))
(print (last-element-reverse '(a b c)))
(print (last-element-nth '(a b c)))
(print (last-element-nth nil))
