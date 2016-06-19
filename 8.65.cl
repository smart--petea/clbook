;Use LABELS to write versions of TR-COUNT-SLICES
(defun tr-count-slices(loaf)
  (labels
    ((tr-cs1 (loaf n)
             (cond
               ((null loaf) n)
               (t (tr-cs1 (cdr loaf) (1+ n)))
               )
             )
     )
    (tr-cs1 loaf 0)
    )
  )

;(print (tr-count-slices '(a b c)))

;tr-reverse
(defun tr-reverse (x)
  (labels
    ((tr-rev1 (y result)
              (cond
                ((null y) result)
                (t (tr-rev1 (cdr y) (cons (car y) result)))
                )
              )
     )
    (tr-rev1 x nil)
    )
  )

(print (tr-reverse '(a b c d e f g)))

