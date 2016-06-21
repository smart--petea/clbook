;Write an iterative version ofUNION, called IT-UNION. Your funciton
;need not return its result in the same order as the built-in UNION
;function
(defun it-union(frst scnd)
  (cond
    ((AND (null frst) (null scnd)) nil)
    ((null frst) scnd)
    ((null scnd) frst)
    (t (let ((result frst))
         (dolist (e scnd result)
           (when (member e scnd) (push e result))
           )
         )
       )
    )
  )

(setf x '(a b c))
(setf y '(b c d))
(print (union x y))
