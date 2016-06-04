;Which of its two inputs does SET_DIIFFERENCE need to copy? Which input
;never needs to be copied? Explain your reasoning
(setf x '(a b c))

(print (equal
         (set-difference x nil)
         x
         )
       )
;x need be copied
