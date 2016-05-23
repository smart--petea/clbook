;The HALF function returns a number that is one-half of its input. Show how to define HALF two different ways
(defun half1(x)
  (/ x 2.0)
  )

(print (half1 5))

(defun half2(x)
  (/
    1.0
    (/ 2 x)))

(print (half2 5))
