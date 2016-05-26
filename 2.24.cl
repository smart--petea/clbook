;What built-in Lisp function would extract the symbol NIGHT from the list ((((GOOD)) ((NIGHT))))
(print (car (caadar '((((GOOD)) ((NIGHT)))) )))
