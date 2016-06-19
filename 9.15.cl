;Write HYBRID-PRIN1. Here is how the function should decide whether to print a dot or not. If the cdr part of the cons
;cell is a lst,
;HYBRID-PRIN1 continues to print in list notation. If the cdr part is NIL, HYBRID-PRIN1 should print a right
;parenthesis. If the cdr part is
;something else, such as a symbol, HYBRID-PRIN1 should print a dot,
;the symbol, and a right parenthesis. You will probably find it useful to define a subfunction to print cdrs of lists,
;as these always begin with a
;space, whereas the cars always begin with a left parenthesis. Test your
;function on the examples in the preceding table.
(defun hybrid-prin1(lst)
  (labels (
           (print-cdrs (cdrs)
                       (cond 
                         ((null cdrs) nil)
                         ((symbolp cdrs) (format t " . ~S" cdrs))
                         (t (OR
                              (format t " ")
                              (hybrid-prin1 (car cdrs))
                              (print-cdrs (cdr cdrs))
                              )
                            )
                         )
                       )
           )
    (cond
      ((atom lst) (format t "~S" lst))
      (t (OR
           (format t "(")
           (hybrid-prin1 (car lst))
           (cond
             ((null (cdr lst)) nil)
             ((symbolp (cdr lst)) (OR (format t " . ~S" (cdr lst))))
             (t (print-cdrs (cdr lst)))
             )
           (format t ")")
           )
         )
      )
    )
  )


(hybrid-prin1 '(A B))
(format t "~%")
(hybrid-prin1 '(A))
(format t "~%")
(hybrid-prin1 '(A B . C))
(format t "~%")
(hybrid-prin1 '((A) B C . D))
