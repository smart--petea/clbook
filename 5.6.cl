;this keyboard exercise is about dice. We will start with a function to
;throw one die and end up with a program to play craps. Be sure to 
;include a documentation string for each function you write

;a. Write a function THROW-DIE that returns a random number from 1 to 
;6, inclusive. Remember that (RANDOM 6) will pick numbers from 0 to 5. 
;THROW-DIE doesn't need any inputs, so its argument 
;list should be NIL

(defun throw-die()
  (+ (random 6) 1)
  )

;(print (throw-die))

;b. Write a function THROW-DICE that throws two dice and returns a
;list of two numbers; the value of the first die and the value of the
;second. We'll call this list a "throw". For example, (THROW-DICE) might
;return the throw (3 5), indicating that the first die was
;a 3 and the second a 5
(defun throw-dice()
  (list (throw-die) (throw-die))
  )

;(print (throw-dice))

;c. Throwing two ones is called "snake eyes"; two sixes is called
; "boxcars". Write predicates SNAKE-EYES-P and BOXCARS-P
;that take athrow as input and return T if the throw is equal to (1 1)
;or (6 6), respectively.
(defun snake-eyes-p(x)
  (and (equal (first x) 1) (equal (second x) 1))
  )

(defun boxcars-p(x)
  (and (equal (first x) 6) (equal (second x) 6))
  )

;(print (snake-eyes-p '(1 1)))
;(print (snake-eyes-p '(6 6)))
;(print (boxcars-p '(6 6)))
;(print (boxcars-p '(1 1)))

;d. In playing craps, the first throw of the dice is crucial. A throw of 7
;or 11 is an instant win. A throw of 2, 3, or 12 is an instant loss
;(American casino rules). Write predicates INSTANT-WIN-P and
;INSTANT-LOSS-P to detect these conditions. Each should take a 
;throw as input
(defun instant-win-p(x)
  (let
    ((sm (+ (first x) (second x))))
    (or (equal sm 7) (equal sm 11))
    )
  )

;(print (instant-win-p '(5 2)))
;(print (instant-win-p '(1 1)))
;(print (instant-win-p '(6 5)))

(defun instant-loss-p (x)
  (let
    ( (sm (+ (first x) (second x))))
    (or (equal sm 2) (equal sm 3) (equal sm 12))
    )
  )

;(print (instant-loss-p '(1 1)))
;(print (instant-loss-p '(1 2)))
;(print (instant-loss-p '(6 6)))
;(print (instant-loss-p '(1 5)))

;e. Write a function SAY-THROW that takes a throw as input and
;returns either the sum of the two dice or the symbol SNAKE-EYES
;or BOXCARS if the sum is 2 or 12. (SAY-THROW '(3 4)) should return 7.
;(SAY-THROW '(6 6)) should return BOXCARS.

(defun say-throw (x)
  (let
    ((sm (+ (first x) (second x))))
    (cond
      ((equal sm 2) 'snake-eyes)
      ((equal sm 12) 'boxcars)
      (t sm)
      )
    )
  )

;(print (say-throw '(1 1)))
;(print (say-throw '(6 6)))
;(print (say-throw '(8 4)))
;(print (say-throw '(5 6)))

;f. If you don't win or lose on the first throw of the dice, the value you
;threw becomes your "point", which will be explained shortly.
;Write a function (CRAPS) that produces the following sort of behavior.
;Your solution shoul make use of the functions you wrote in
;previous steps.
;>(craps)
;   (THROW 1 AND 1 -- SNAKEEYES -- YOU LOSE)
;>(craps)
;   ((THROW 3 AND 4 -- 7 -- YOU WIN
;>(craps)
;   (THROW 2 AND 4 -- YOUR POINT IS 6)
(defun craps()
  (let 
    ( (throww (throw-dice)))
     (print 'throw)
     (print (first throww))
     (print 'and)
     (print (second throww))
     (print '--)
     (cond
       ((instant-win-p throww)
        (and 
          (print (say-throw throww))
          (print '--)
          (print 'you)
          (print 'win)
          )
        )
       ((instant-loss-p throww) 
        (and
          (print (say-throw throww))
          (print '--)
          (print 'you)
          (print 'lose)
          )
       )
       (t 
         (and
           (print 'your)
           (print 'point)
           (print 'is)
           (print (say-throw throww))
           )
         )
    )
  )
  )

;(craps)

;g. Once a point has been established, you continue throwing the dice
;until you either win by making the point again or lose by thowing a 7. Write the function TRY-FOR-POINT that simulates
;this part of the game, as follows:
;>(try-for-point 6)
;(THROW 3 AND 5 -- 8 -- TRHOW AGAIN)
;>(try-for-point 6)
;(THROW 5 AND 1 -- 6 -- YOU WIN)
;>(craps)
;(THROW 3 AND 6 -- YOUR POINT IS 9)
;>(try-for-point 9)
;(THROW 6 AND 1 -- 7 -- YOU LOSE)
(defun try-for-point(x)
  (let* (
         (throww (throw-dice))
         (frst (first throww))
         (scnd (second throww))
         (sm (+ frst scnd))
         )
    (print 'throw)
    (print frst)
    (print 'and)
    (print scnd)
    (print '--)
    (print sm)
    (print '--)
    (cond
      ((equal sm x) (and (print 'you) (print 'win)))
      ((equal sm 7) (and (print 'you) (print 'lose)))
      (t (and (print 'throw) (print 'again)))
      )
    )
  )

(try-for-point 10)
