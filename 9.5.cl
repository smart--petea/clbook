;Part of any tic-tac-toe playing is a function to display the
;board. Write a function PRINT-BOARD that takes a list of nine
;elements as input. Each element will be an X, an O, or NIL. PRINT-BOARD
;should display the correspond board. For example,
;(PRINT-BOARD '(X O O NIL X NIL O NIL X)) should print:
;X|O|O
;_____
; | | 
;_____
;O| |X
(defun print-element(x)
  (format t "~A" (if (eq nil x) " " x))
  )

(defun print-line(x y z)
  (format t "~&")
  (print-element x)
  (format t "|")
  (print-element y)
  (format t "|")
  (print-element z)
  )

(defun print-line-brake()
  (format t "~&------")
  )


(defun print-board(board)
  (print-line (first board) (second board) (third board))
  (print-line-brake)
  (print-line (nth 4 board) (nth 5 board) (nth 6 board))
  (print-line-brake)
  (print-line (nth 7 board) (nth 8 board) (nth 9 board))
  )

(print-board '(X O O NIL X NIL O NIL X))
