;Rewrite the DOTIMES expression in the preceding problem using DO.
;Does this help explain the value DOTIMES returns?
(do
  ((i 0 (1+ i)))
  ((> i 4) i)
  (format t "~&I = ~S" i)
  )

