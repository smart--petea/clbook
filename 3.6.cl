;Define a function PYTHAG that takes two inputs, x and y, and returns
;the square root of x^2+y^2. You may recognize this a Pythagoras's
;formula for computing the length of the hypotenuse of a right triangle
;givet the lengths of the other two sides. (PYTHAG 3 4) should return 5.0
(defun square(x)
  (* x x)
  )

(defun pythag(x y)
  (+ 
    (square x)
    (square y)
    )
  )

(print (pythag 3 4))

