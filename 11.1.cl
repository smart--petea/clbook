;Write an iterative version of the MEMBER function, called IT-MEMBER. It should return
;T if its first input appears in it second input;
;it eed not return a sublist of its second input
(defun it-member(el scnd)
  (dolist (e scnd nil)
    ;(format t "~&e = ~S" e)
    (when (equal el e)
      (return t)
      )
    )
  )

(print (it-member 'a '(b a c)))
(print (it-member 'a '(b d c)))
