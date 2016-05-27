;Write a function FURTHER that meakes a positive number larger by 
;adding one to it, and a negative number smaller by subtractive one from it.
;What does your function do if given the number 0?

(defun further(x)
  (if (< x 0) (1- x) (1+ x))
  )

(print (further 5))
(print (further -5))
