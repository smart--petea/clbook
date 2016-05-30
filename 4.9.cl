;Type in the following suspicious function definition:
;(defun make-odd(x)
;   (cond (t x)
;      ((not (oddp x)) (+ x 1))))
;What is wrong with this function? Try out the function on the numbers
;3, 4, and -2. Rewrite it so it works correctly.

(defun make-odd(x)
  (cond ((not (oddp x)) (+ x 1))
        (t x)
        )
  )

(print (make-odd 3))
(print (make-odd 4))
(print (make-odd -2))
