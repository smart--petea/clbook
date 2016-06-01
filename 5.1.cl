;Rewrite function POOR-STYLE to create a new local variable Q using
;LET, instead of using SETF to change P. Call your new function
;GOOD-STYLE
(defun poor-style(p)
  (setf p (+ p 5))
  (list 'result 'is p)
  )

(defun good-style(p)
  (let ((x (+ p 5)))
    (list 'result 'is x)
    )
  )

(print (poor-style 5))
(print (good-style 5))
