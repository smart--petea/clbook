;Write a function FIRSTZERO that takes a list of three numbers as input
;and returns a word (one of "first," "second," "third," or "none")
;indicating where the first zero appears in the list. Example:
;(FIRSTZERO '(3 0 1)) should return SECOND. What happens if you
;try to call FIRSTZERO with three separate numbers instead of a list of 
;three numbers, as in (FIRSTZERO 3 0 4)
(defun firstzero (x)
  (cond ((equal (first x) 0) 'first)
        ((equal (second x) 0) 'second)
        ((equal (third x) 0) 'third)
        (t 'none)
        )
  )

(print (firstzero '(3 0 1)))
