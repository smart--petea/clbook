;Follow the steps below to create a histogram-drawing program. Your 
;functions should not assume that the histogram will have exactly eleven
;bins. In other words, don't use eleven as a constant in your program;
;use (LENGTH *HIST-ARRAY*) instead. That way your program will
;be abel to generate histograms of any size.
;a.
;Write expressions to set up a global variable *HIST-ARRAY* that
;holds the array of counts, and a global variable *TOTAL-POINTS*
;that holds the number of points recorded so far
;(setf *hist-array* nil)
(setf *total-points* 0)

;b.
;Write a function NEW-HISTOGRAM to initialize these variables
;appropriately. It should take one input: the number of bins the histogram is to have.
(defun new-histogram(bins)
  (setf *total-points* 0)
  (setf *hist-array* (make-array bins :initial-element 0))
  )

(new-histogram 11)
;(print *hist-array*)

;c.
;Write the function RECORD-VALUE that takes a number as input.
;If the number is between zero and ten, it should increment the appropriate element of the array, and also
;update *TOTAL-POINTS*. If the input is out of range, RECORD-VALUE should
;issue an appropriate error message
(defun record-value(inpt)
  (if
    (AND
      (< -1 inpt)
      (> 11 inpt)
      )
    (let ()
        (incf (aref *hist-array* inpt))
        (incf *total-points*)
        )
    (format t "~&number out of range")
    )
  )

;(record-value 5)
;(print *total-points*)
;(print *hist-array*)

;d.
;Write a function PRINT-HIST-LINE that takes a value from zero to
;ten as input, looks up that value in the array, and prints the
;corresponding line of the histogram. To get the numbers to line up
;in columns propertly, you will need to use the format directives ~2S
;to display the value and ~3S to display the count. You can use a 
;DOTIMES to print the asterisks.
