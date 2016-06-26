;Write an iterative version of NTH, called IT-NTH
(defun it-nth(n lst)
  (let ((indx 0))
    (dolist (e lst nil)
      (incf indx)
      (when (equal indx n) (return e))
      )
    )
  )

(print (it-nth 3 '(a b c d e)))
