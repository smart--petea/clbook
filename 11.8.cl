;Write an iterative version of REVERSE, called IT-REVERSE
(defun IT-REVERSE(lst)
  (let ((result nil))
    (dolist (el lst result)
      (push el result)
      )
    )
  )

(print (it-reverse '(a b c d e)))
