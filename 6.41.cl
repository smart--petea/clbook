(setf rooms
      '(
        (living-room 
          (north front-stairs)
          (south dining-room)
          (east kitchen)
          )
        (upstairs-bedroom
          (west library)
          (south front-stairs)
          )
        (dining-room
          (north living-room)
          (east pantry)
          (west downstairs-bedroom)
          )
        (kitchen
          (west living-room)
          (south pantry)
          )
        (pantry 
          (north kitchen)
          (west dining-room)
          )
        (downstairs-bedroom
          (north back-stairs)
          (east dining-room)
          )
        (back-stairs
          (south downstairs-bedroom)
          (north library)
          )
        (front-stairs 
          (north upstairs-bedroom)
          (south living-room)
          )
        (library
          (east upstairs-bedroom)
          (south back-stairs)
          )
        )
      )
;If the table of rooms is already stored on the computer for you, load the file
;containing it. If not, you will have to type the table in as it appears 
;in Figure 6-3. If you like, try (SDRAW ROOMS) or (SCRAWL
;ROOMS) to view the table as a cons cell structure.

;a.
;Write a function CHOICES that takes the name of a room as input
;and returns the table of permissible directions Robbie may take from
;that room. For example, (CHOICES 'PATNTRY) should return the
;list ((NORTH KITCHEn) (WEST DINING-ROOM)). Test your
;function to make sure it returns the correct result.
(defun choices(name)
  (cdr (assoc name rooms))
  )

;(print (choices 'pantry))

;b.
;Write a function LOOK that takes two inputs, a direction and a 
;room, and tells where Robbie would end up if he moved in that
;direction from that room. For example, (LOOK 'NORTH 'PANTRY) should return
;KITCHEN. (LOOK 'WEST 'PANTRY)
;should return DINING-ROOM. (LOOK 'SOUTH 'PANTRY)
;should return NIL. Hint: The CHOICES function will be a useful building block.
(defun look(direction roomm)
  (second (assoc direction (choices roomm)))
  )

;(print (look 'north 'pantry))
;(print (look 'west 'pantry))
;(print (look 'south 'pantry))

;c.
;we will use the global variable LOC to hold Robbie's location.
;Type in an expression to set his location to be the pnatry. The following function should be used whenever you want to
;change his location
(setf LOC 'pantry)
(defun set-robbie-location (place)
  "MOves Robbie to PLACE ty setting the variable LOC."
  (setf loc place)
  )

;d.
;Write a function HOW-MANY-CHOICES that tells how many
;choices Robbie has for where to move to next. Your function should
;refer to the global variable LOC to find his current location. If he is
;in the pantry, (HOW-MANY-CHOICES) should return 2
(defun how-many-choices()
  (length (choices LOC))
  )

;(print (how-many-choices))

;e.
;Write a predicate UPSTARSP that returns T it its input is an 
;upstairs location. (The library and the upstairs bedroom are the only
;two locations upstairs.) Write a predicate ONSTAIRSP that returns
;T if its input is either FRONT-STAIRS or BACK-STAIRS
(defun upstairsp(location)
  (OR
    (equal location 'library)
    (equal location 'upstairs-bedroom)
    )
  )

(defun onstairsp(location)
  (OR
    (equal location 'front-stairs)
    (equal location 'back-stairs)
    )
  )

;f.
;Where's Robbie? Write a function of no inputs called WHERE that
;tells where Robbie is. If he is in the libreary, (WHERE) should say
;(ROBBIE IS UPSTAIRS IN THE LIBRARY). If he is in the
;kitchen, it should say (ROBBIE is DOWNSTAIRS IN THE
;KITCHEN). If he is on the fron stairs, it should say (ROBBIE IS
;ON THE FRONT-STAIRS)
(defun where()
  (print "ROBBIE IS ")
  (cond
    ((onstairsp loc) (print " on the "))
    ((upstairsp loc) (print " upstairs in "))
    (t (print " downstairs in"))
    )
  (print "the")
  (print loc)
  )

;(setf loc 'front-stairs)
;(where)

;g.
;Write a function MOVE that takes one input, a direction, and moves
;Robbie in that direction. MOVE should make use of the LOOK
;function you wrote previously, and should call SET-ROBBIE-LOCATION to move him. If
;Robbie can't move in the specified
;direction an appropriate message should be returned. For example,
;if Robbie is in the pantry, (MOVE 'SOUTH) should return
;something like (OUCH! ROBBIE HIT A WALL). (MOVE 'NORTH)
;should change Robbies's location and return
;(ROBBIE IS DOWNSTAIRS IN THE KITCHEN).
(defun move(direction)
  (let
    (
     (newloc (look direction loc))
     )
     (if newloc
       (AND
         ;(set-robbie-location newloc)
         (where)
         )
       (print "ouch! ROBBIE HIT A WALL")
       )
     )
  )

;(move 'east)
;(move 'west)

;h.
;Starting from the pantry, take Robbie to the library via the back
;stairs. Then take him to the kitchen, but do not lead him through the
;downstaris bedroom on the way
