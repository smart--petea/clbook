;In this keyboard exercise we will manipulate playing cards with
;applicative operators. A card will be represented by a list of form
;(rank suit), for example, (ACE SPADES) or (2 CLUBS). A hand will be
;represented by a list of cards.

;a.
;Write the functions RANK and SUIT that return the rank and suit of
;a card, respectively. (RANK '(2 CLUBS)) should return 2, and
;(SUIT '(2 CLUBS)) should return CLUBS.
(defun rank(x)
  (car x)
  )

(defun suit(x)
  (second x)
  )

;(print (rank '(2 clubs)))
;(print (suit '(2 clubs)))

;b.
;Set the global variable MY-HAND to the following hand of cards:
(setf my-hand '(
                (3 hearts)
                (5 clubs)
                (2 diamonds)
                (4 diamonds)
                (ace spades)
                )
      )
;Now write a function COUNT-SUIT that takes two inputs, a suit and
;a hand of cards, and returns the number of cards belonging to that suit.
;(COUNT-SUIT 'DIAMONDS MY-HAND) should return 2
(defun count-suit(suit hand)
  (length
    (remove-if-not
      #'(lambda(e) (eq suit (second e)))
      hand
      )
    )
  )

;(print (count-suit 'diamonds my-hand))

;c.
;Set the global variable COLORS to the following table:
(setf colors '(
               (clubs black)
               (diamonds red)
               (hearts red)
               (spades black)
               )
      )
;Now write a funciton COLOR-OF that uses the table COLORS to
;retrieve the color of a card. (COLOR-OF '(2 CLUBS)) should
;return BLACK. (COLOR-OF '(6 HEARTS)) should return RED
(defun color-of(card)
  (second
    (assoc
      (second card)
      colors
      )
    )
  )
;(print (color-of '(2 clubs)))
;(print (color-of '(6 hearts)))

;d.
;Write a function FIRST-RED that returns the first card of a hand
;that is of a red suit, or NIL if none are.
(defun first-red(hand)
  (find-if
    #'(lambda(e) (eq 'red (color-of e)))
    hand
    )
  )

;(print (first-red my-hand))

;e
;Write a function BLACK-CARDS that returns a list of all the black
;cards in a hand
(defun black-cards(hand)
  (remove-if-not
    #'(lambda(e) (eq 'black (color-of e)))
    hand
    )
  )

;(print (black-cards my-hand))

;f. 
;Write a function WHAT-RANKS that takes two inputs, a suit and a
;hand, and returns the ranks of all cards belonging to that suit.
;(WHAT-RANKS 'DIAMONDS MY-HAND) should return the list (2 4).
;(WHAT-RANKS 'SPADES MY-HAND) should return the list (ACE). 
;Hint: First extract all the cards of the specified suit,
;then use another operator to get the ranks of those cards.
(defun what-ranks(suitt hand)
   (mapcar
     #'rank
     (remove-if-not
       #'(lambda(e)
           (eq suitt (suit e))
           )
       hand
       )
     )
   )
;(print (what-ranks 'diamonds my-hand))
;(print (what-ranks 'spades my-hand))

;g.
;Set the global variable ALL-RANKS to the list
(setf ALL-RANKS '(2 3 4 5 6 7 8 9 10 jack queen king ace))
;Then write a predicate HIGHER-RANK-P that takes two cards as
;input and returns true if the first card has a higher rank than the
;second. Hint: look at the BEFOREP predicate on page 171 of Chapter 6
(defun higher-rank-p (card1 card2)
  (member card1 (member car2 all-ranks))
  )

;h. 
;Write a function HIGH-CARD that returns the highes ranked card
;in a hand. Hint: One way to solve this is to use FIND-IF to search a listo
;of ranks (ordered from high to low) to find the highest rank that
;appears in the hand. The use ASSOC on the hand to pick the card
;with that rank. Another solution would be to use REDUCE(defined
;in the next section) to repeatedly pick the highest card of each pair
(defun high-card(hand)
    (find-if
      #'(lambda(e)
          (assoc e hand)
          )
      (reverse all-ranks)
      )
    )
(print (high-card my-hand))
