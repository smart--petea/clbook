;In this exercise we will write a program for producing a graph of an arbitrary
;function. The program will prompt for a function  name F and then plot y = F(x)
;for a specified range of x values. Here is an example of how the program works:
;>(make-graph)
;Function to graph? square
;Starting x value? -7
;Ending x value? 7
;Plotting string? "****"

;As you write each of the following functions, test it by calling it from
;top level with appropriate inputs before proceeding on to the next function.
;a.
;Write a recursive function SPACE-OVER that takes a number N as
;input and moves the cursov to the right by printgin N spaces, one at a
;time. SPACE shoul print "Error!" if N is negative. Test it by
;using the function TEST. (Try (TEST 5) and (TEST -5).
(defun test (n)
  (format t "~%>>>")
  (space-over n)
  (format t "<<<")
  )

(defun space-over(n)
  (cond
    ((< n 0) (format t "~&Error!~&"))
    ((zerop n) t)
    (t (OR
         (format t " ")
         (space-over (1- n))
         )
       )
    )
  )

;(test 5)
;(test 1)
;(test 0)
;(test -5)

;b. 
;Write a function PLOT-ONE-POINT that takes two inputs,
;PLOTTING-STRING and Y-VAL, print PLOTTING-STRING
;(without the quotes) in column Y-VAL, and then moves to a new line
;The leftmost column is numbered zero.
(defun plot-one-point(plotting-string y-val)
  (space-over y-val)
  (format t "~A~%"  plotting-string)
  )

;(plot-one-point "****" 5)

;c.
;Write a function PLOT-POINTS that takes a string adn a list of y
;values as input and plots them. (PLOT-POINTS "<>" '(4 6 8 10 8 6 4)) should print
(defun plot-points (plotting-string y-vals)
  (cond
    ((null y-vals) nil)
    (t (OR
         (plot-one-point plotting-string (car y-vals))
         (plot-points plotting-string (cdr y-vals))
         )
       )
    )
  )

;(PLOT-POINTS "<>" '(4 6 8 10 8 6 4))

;d.
;Write a function GENERATE that takes two numbers M and N as
;input and returns a list of the integers from M to N. (GENERATE -3 3)
;should return (-3 -2 -1 0 1 2 3)
(defun generate(m n)
  (cond
    ((< m n) (cons m (generate (1+ m) n)))
    (t (list n))
    )
  )

(print (generate -3 3))
