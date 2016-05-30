;Write a function to act as referee in the ROCK-Scissors-Paper game. In
;this game, each player picks one of Rock, Scissors, or Paper, and then
;both players tell what the picked. Rock "breaks" Scissors, so if the
;first player picks Rock and the second picks Scissors, the first player
;wins. Scissors "cuts" Paper, and Paper "covers" Rock. If both
;players pick the same thing, it's a tie. The function PLAY should take
;two inputs, each of which is either ROCKS, SCISSORS, or PAPER, and
;return one of the symbols FIRST-WINS, SECOND-WINS, or TIE.
;Examples: (PLAY 'ROCK 'SCISSORS) should return FIRST-WINS.
;(PLAY 'PAPER 'SCISSORS) should return SECOND-WINS.
(defun play(x y)
  (cond 
    ((equal x y) 'TIE)
    ((and (equal x 'ROCK) (equal y 'SCISSORS)) 'FIRST-WINS)
    ((and (equal x 'ROCK) (equal y 'PAPER)) 'SECOND-WINS)
    ((and (equal x 'PAPER) (equal y 'SCISSORS)) 'SECOND-WINS)
    ((and (equal x 'PAPER) (equal y 'ROCK)) 'FIRST-WINS)
    ((and (equal x 'SCISSORS) (equal y 'ROCK)) 'SECOND-WINS)
    ((and (equal x 'SCISSORS) (equal y 'PAPER)) 'FIRST-WINS)
    )
  )

(print (play 'ROCK 'SCISSORS))
(print (play 'PAPER 'SCISSORS))
