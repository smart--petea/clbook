;If the genealogy database is already stored on the computer for you,
;load the file containing it. If not, you will have to type it in as it appears in Figure 8-12. Store database in the
;blogal variable FAMILY
(setf family
      '((colin nil nil)
               (deirdre nil nil)
               (arthur nil nil)
               (kate nil nil)
               (frank nil nil)
               (linda nil nil)
               (suzanne colin deirdre)
               (bruce arthur kate)
               (charles arthur kate)
               (david arthur kate)
               (ellen arthur kate)
               (george frank linda)
               (hillary frank linda)
               (andre nil nil)
               (tamara bruce suzanne)
               (vincent bruce suzanne)
               (wanda nil nil)
               (ivan george ellen)
               (julie george ellen)
               (marie george ellen)
               (nigel andre hillary)
               (frederick nil tamara)
               (zelda vincent wanda)
               (joshua ivan wanda)
               (quentin nil nil)
               (robert quentin julie)
               (olivia nigel marie)
               (peter nigel marie)
               (erica nil nil)
               (yvette robert zelda)
               (diane peter erica)))
;a. 
;Write the functions FATHER, MOTHER, PARENTS, and CHILDREN
;that return a person's father, mother, a list of his or her
;known parents, and a list of his or her children, respectively.
;(FATHER 'SUZANNE) should return COLIN.
;(PARENTS 'SUZANNE) shoul return (COLIN DEIRDRE).
;(PARENTS 'FREDERICK) should return (TAMARA), since Frederick's father is
;unknown. (CHILDREN 'ARTHUR) should return the set
;(BRUCE CHARLES DAVID ELLEN). If any of these functions is given
;NIL as input, it should return NIL. This feature will be useful
;later when we write some recursive functions
(defun father(name)
  (second
    (assoc
      name 
      family
      )
    )
  )

;(print (father 'SUZANNE))
;(print (father nil))

(defun mother(name)
  (third
    (assoc
      name
      family
      )
    )
  )

;(print (mother 'SUZANNE))
;(print (mother nil))

(defun parents(name)
  (remove
    nil
    (cdr
        (assoc
            name
            family
            )
        )
    )
  )

;(print (parents 'SUZANNE))
;(print (parents 'FREDERICK))

(defun children(name)
  (mapcar
    #'car
    (remove-if-not
      #'(lambda(e) (OR (eq (second e) name) (eq (third e) name)))
      family
      )
    )
  )

;(print (children 'ARTHUR))

;b.
;Write SIBLINGS, a function that returns a list of a person's siblings,
;including genetic half-siblings. (SIBLINGS 'BRUCE) should return
;(CHARLES DAVID ELLEN). (SIBLINGS 'ZELDA) should return (JOSHUA).
(defun siblings(name)
  (remove
    name
    (remove-duplicates
      (append
        (children (mother name))
        (children (father name))
        )
      )
    )
  )

;(print (siblings 'bruce))
;(print (siblings 'zelda))

;c.
;Write MAPUNION, an applicative operator that takes a function and
;a list as input, applies the function to every element of the list, and
;computes the union of all the the results. An example is (MAPUNION #'REST '((1 A B C) (2 E C J)(3 F A B C D))),
;which should return the set (A B C E J F D). Hint: MAPUNION can be defined as a
;combination of two applicative operators you already know.
(defun mapunion(foo lst)
  (remove-duplicates
    (reduce
      #'append
      (mapcar
        foo
        lst
        )
      )
    )
  )

;(print (mapunion #'REST '((1 A B C)(2 E C J)(3 F A B C D))))

;d. 
;Write GRANDPARENTS, a function that returns the set of a 
;person's grandparents. Use MAPUNION in your solution.
(defun grandparents(name)
  (mapunion
    #'parents
    (parents name)
    )
  )

;(print (grandparents  'tamara)) 

;e.
;Write COUSINS, a function that returns the set of a person's
;geneticaally related first cousings, in other words, the children of any of their
;parents's siblings.
;(COUSINS 'JULIE) should return the set (TAMARA VINCENT NIGEL). Use
;MAPUNION in your solution
(defun cousins(name)
  (remove-if
    #'(lambda (e)
        (member
          e
          (mapunion
            #'children
            (parents name)
            )
          )
        )

    (mapunion
      #'children
      (mapunion
        #'children
        (grandparents name)
        )
      )
    )
  )

(print (cousins 'JULIE))
;(print (mapunion
;         #'children
;         (parents 'JULIE)
;         )
;       )
