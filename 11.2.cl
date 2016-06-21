;Write an iterative versionof ASSOC, called IT-ASSOC
(defun it-assoc(el table)
  (dolist (e table nil)
    (when (equal (car e) el) (return e))
    )
  )

(setf table '((a 1)(b 2)(c 3)))
(print (it-assoc 'b table))

