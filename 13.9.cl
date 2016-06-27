;Set up the global variable CRYPTO-TEXT as shown. Then build the
;cryptogram-solving tool by following these instructions.
(setf crypto-text
      '(
        "zj ze k jf slapzi ezvlij pib kl jufwxuj p hffv jupi jf"
        "enlpo pib slafml pvv bfwkj")
      )

;a.
;Each letter in the alphabet has a corresponding letter to which it
;deciphers, for example, P deciphers to A. As we solve th cryptogram we
;will store this information in two hash tables called
;*ENCIPHER-TABLE* and *DECIPHER-TABLE*. We will use
;*DECIPHER-TABLE* to prin out the deciphered cryptogram. We
;need *ENCIPHER-TABLE* to check for two letter being
;deciphered to the same thing, for example, if P is deciphered to A
;and then we tried to decipher K to A, a look at *ENCIPHER-TABLE* would reveal that
;A had already been assigned to
;P. Similarly, if P is deciphered to A and then we tried deciphering P to E,
;a look at *DECIPHER-TABLE* would tell us that P had
;already been deciphered to A. Write expressions to initialize these 
;global variables
(setf *encipher-table* (make-hash-table))
(setf *decipher-table* (make-hash-table))

;(print *encipher-table*)

;b.
;Write a function MAKE-SUBSTITUTION that takes two character 
;objects as input and stores the appropriate entries in
;*DECIPHER-TABLE* and *ENCIPHER-TABLE* so that the first letter
;deciphers to the second and the second letter enciphers to the first.
;This function does not eed to check if either letter already has an entry in these
;hash tables
(defun make-substitution(frst scnd)
  (setf (gethash frst *decipher-table*) scnd)
  (setf (gethash scnd *encipher-table*) frst)
  )

(make-substitution 'a 'b)
;(print (gethash 'a *decipher-table*))

;c.
;Write a function UNDO-SUBSTITUTION that takes one letter as input.
;It should set the *DECIPHER-TABLE* entry of that letter,
;and the *ENCIPHER-TABLE* entry of the letter it deciphered to, to NIL
(defun undo-substitution(smbl)
  (setf (gethash (gethash smbl *decipher-table*) *encipher-table*) nil)
  (setf (gethash smbl *decipher-table*) nil)
  )

;(print *decipher-table*)
;(print *encipher-table*)
;(undo-substitution 'a)
;(print *decipher-table*)
;(print *encipher-table*)

;d.
;Look up the documentation for the CLRHASH function, and write a
;function CLEAR that clears the two hash tables used in this problem
