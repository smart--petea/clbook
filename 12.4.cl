;In this exercise you will create a discrimination net for automotive
;diagnosis that mimics the behavior of the system shown in the
;preceding pages.

;a.
;Writ a DEFSTRUCT for a structure called NODE, with four
;components called NAME, QUESTION, YES-CASE, and 
;NO-CASE.
(defstruct node 
                 name
                 question
                 yes-case
                 no-case
  )

;(setf nd (make-node))
;(print nd);

;b.
;Define a global variable *NODE-LIST* that will hold all the nodes
;in the discrimination net. Write a function INIT that initializes the
;network by setting *NODE-LIST* to NIL
;(setf *node-list* nil)
(defun init() (setf *node-list* nil))

(init)
;(print *node-list*)

;c.
;Write ADD-NODE. It should return the name of the node it added.
(defun add-node(name question yes-case no-case)
  (setf *node-list* (cons (make-node :name name 
                   :question question
                   :yes-case yes-case
                   :no-case no-case)
        *node-list*
        )
        )
  name
  )

(add-node 'start
          "Does the engine turn over?"
          'engine-turns-over
          'engine-wont-turn-over)
(add-node 'engine-turns-over
          "Will the engine run for any period of time?"
          'engine-will-run-briefly
          'engine-wont-run)
(add-node 'engine-wont-run
          "Is there gas in the tank?"
          'gas-in-tank
          "Fill the tank and try starting the engine again.")
(add-node 'engine-wont-turn-over
          "Do you hear any sound when you turn the key?"
          'sound-when-turn-key
          'no-sound-when-turn-key)
(add-node 'no-sound-when-turn-key
          "Is the battery voltage low?"
          "Replace the battery"
          'battery-voltage-ok)
(add-node 'battery-voltage-ok
          "Are the battery cables dirty or loose?"
          "Clean the cables and tighten the connections."
          'battery-cables-good)

;d.
;Write FIND-NODE, which takes a node name as input and returns
;the node if it appears in *NODE-LIST*, or NIL it doesn't
(defun find-node(name)
  (dolist (e *node-list* nil)
    (when (equal (node-name e) name) (return e))
    )
  )

;(print (find-node 'no-sound-when-turn-key))
;(print (find-node 'petea))

;e.
;Write PROCESS-NODE. It takes a node name as input. It can't
;find the node, it prints a message that the node hasn't been defined
;yet, and returns NIL. Otherwise it asks the user the question
;associated with that node, and then returns the node's yes action or
;no action depending on how the user responds.
(defun process-node(name)
  (let ((nd (find-node name)))
    (if (null nd)
      (format t "the node ~S wasn't defined" name)
      (if (y-or-n-p (node-question nd))
            (node-yes-case nd)
            (node-no-case nd)
            )
      )
    )
  )

;(print (process-node 'no-sound-when-turn-key))

