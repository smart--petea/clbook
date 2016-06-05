;In this problem we will simulate the behavior of a very simple-minded
;crature, Nerdus Americanis (also known as Computerus Hackerus).
;This creature has only five states: Sleeping, Eating, Waiting-for-a-Computer, Programming, and Debugging.
;Its behavior is cyclic: After
;it sleeps t always eats, after it eats it always waits for a computer, and
;so on, until after debugging it goes back to sleep for a while

;a.
;What type of data structure would be usebul for representing the connection between a state and its successor? Write
;such a data structure for the five-state cycle given above, and store it in a global
;variable called NERD-STATES
(setf nerd-states '(
                    (sleeping eating)
                    (eating waiting-for-a-computer)
                    (waiting-for-a-computer programming)
                    (programming debugging)
                    (debugging sleeping)
                    )
      )

;b. Write a function NERDUS that takes the name of a state as input
;and uses the data structure you designed to determine the next state
;the creature will be in. (NERDUS 'SLEEPING) should return
;EATING, for example. (NERDUS 'DEBUGGING) should return SLEEPING
(defun nerdus(state)
  (second (assoc state nerd-states))
  )

;(print (nerdus 'SLEEPING))

;c. What is the result of (NERDUS 'PLAYING-GUITAR)?
;(print (nerdus 'xxx))

;d.When Nerdus Americanis ingests too many stimulatns (caffeine overdose), it stops sleeping.
;After finishing Debuggin, i
;immediately goes on to state Eating. Write a function SLEEPLESS-NERD that works jus like NERDUS except it never sleeps. 
;Your function should refer to the global variable NERD-STATES, as 
;NERDUS does
(defun sleepless-nerd(state)
  (let 
    (
     (next-state (nerdus state))
     )
    (if (equal next-state 'SLEEPING) (nerdus next-state) next-state)
    )
  )

;(print (sleepless-nerd 'debugging))
;(print (sleepless-nerd 'eating))

;e.
;Exposing Nerdus Americanis to extreme amounts of chemical
;stimulants produces pathological behavior. Instead of an orderly
;advance to its next state, the creature advances two states. For 
;example, it goes from Eating directly to Programming, and from
;there to Sleeping. Write a function NERD-ON-CAFFEINE that
;exhibits this unusual pathology. Your function should use the same
;table as NERDUS
(defun nerd-on-caffeine(state)
  (nerdus (nerdus state))
  )
;(print (nerd-on-caffeine 'debugging))

;f. 
;If a Nerd on caffeine is currently programming, how many states
;will it have to go throug before it is debugging?

;3 - sleeping, waiting, debugging
