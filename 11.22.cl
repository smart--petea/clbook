;In this keyboard exercise we will explore some properties of single- and
;double-stranded DNA, or deoxyribonucleic acid. DNA, and the realted molecule
;RNA, make up the genetic material found in viruses and every type
;of cell, from bacteria to people. A strand of DNA is very much like a chain of
;cons cells; the elements of the chain are of four types, corresponding to the
;four bases adenine, thymine, guanine, and cytosine. We will represent a
;strand of DNA by a list of bases. The list (A G G T C A T T G) corresponds
;to a strand that is nine bases long; the first base being adenine and the next two
;guanine. Here is a schematic diagram of the strand:

;Each of the four bases has a complement with which it can form a piar.
;Adenine pairs with thymine, while guanine pairs with cytosine. Two single
;strands of DNA can combine to form double-stranded DNA (whose shape is
;the famous "double helix") when each of their corresponding bases are
;complementary. The strand (A G G T C A T T G) and the strand (T C C A G T A A C) are
;complementary, for example. Double-stranded DNA looks like this:

;Write iterative solutions to all parts of this exercise that require repetitive actions.

;1.
;Write a function COMPLEMENT-BASE that takes a base as input and returns the matching complementary base.
;(COMPLEMENT-BASE 'A) should return T; (COMPLEMENT-BASE 'T) should return A; and so on.

(defun complement-base(el)
  (cond
    ((eq el 'A) 't)
    ((eq el 'T) 'a)
    ((eq el 'G) 'c)
    ((eq el 'C) 'G)
    (t nil)
    )
  )

;(print (complement-base 'G))

;b.
;Write a function COMPLEMENT-STRAND that returns the
;complementary strand of a sequence of single-stranded DNA.
;(COMPLEMENT-STRAND '(A G G T)) should return (T C C A).
(defun complement-strand(strand)
  (do*
    ((el nil (car temp))
     (temp strand (cdr temp))
     (result nil (append result (list (complement-base el)))))
    ((null temp) result)
    )
  )

;(print (complement-strand '(A G G T)))

;c.
;Write a function MAKE-DOUBLE that takes a single strand of DNA
;as input and returns a double-stranded version. We will
;represent double-stranded DNA by making a list of each base and its
;complement. (MAKE-DOUBLE '(G G A C T)) should return ((G C)(G C)(A T)(C G)).
(defun make-double(str)
  (do*
    ((el nil (car temp))
     (temp str (cdr temp))
     (result nil (append result (list (list el (complement-base el))))))
     ((null temp) result)
     )
  )

;(print (make-double '(G G A C T)))

;d.
;One of the important clues to DNA's double-stranded nature was the
;observation that in naturally occuring DNA, wheather from people,
;animals, or plants, the observed percetage of
;guaninve is very close to that of cytosine. Write a function COUNT-BASES
;that counts the number of bases oeach type in a DNA
;strand, and returns the result as a table. Your function should work
;for both single- and double-stranded DNA. EXAMPLE:
;(COUNT-BASES '((GC)(AT)(TA)(TA)(CG))) should return
;((A3)(T3)(G2)(C2)), whereas (COUNT-BASES '(A G T A C T C T)) should
;return ((A 2)(T 3)(G 1)(C 2)). In the latter case the percentages
;are not equal because we are working with only a single strand.
;What answer do you get if you apply COUNT-BASES to the
;corresponding double-stranded sequence?
(defun count-bases(lst)
  (do*
    ((el (car lst) (car temp))
     (temp (cdr lst) (cdr temp))
     (result '((a 0)(t 0)(g 0)(c 0))))
    ((null el) result)
    (if
        (listp el)
        (when t
          (incf (second (assoc (car el) result)))
          (incf (second (assoc (second el) result)))
          )
        (incf (second (assoc el result)))
        )
    )
  )

;(print (count-bases '(A G T A C T C T)))
;(print (count-bases '((G C)(A T)(T A)(T A)(C G))))

;e.
;Write a predicate PREFIXP that returns T if one strand of DNA is
;prefix of another. To be a prefix, the elements of the first strand must exactly
;match the corresponding element of the second,
;withc may be longer. Example: (G T C) is a prefix of (G T C A T), but not
;of (A G G T C)
(defun prefixp(frst scnd)
  (do*
    ((frst-temp frst (cdr frst-temp))
     (scnd-temp scnd (cdr scnd-temp)))
    ((OR (null frst-temp) (null scnd-temp)) t)
    (when (not (equal (car frst-temp) (car scnd-temp)))
      (return-from prefixp nil)
      )
    )
  )

;(print (prefixp '(g t c) '(g t c a t)))
;(print (prefixp '(g t c) '(a g t c a t)))

;f.
;Write a predicate APPEARSP that returns T if one DNA strand
;appears anywhere withing another. For example, (C A T) appears in
;(T C A T G) but not in (T C C G T A). Hint: If x appears in y, then
;x is either a prefix of y, or of (rest y), or of (rest (rest y)),
;and so on.

(defun appearsp(frst scnd)
  (do*
    ((scnd-temp scnd (cdr scnd-temp)))
    ((null scnd-temp) nil)
    (when (prefixp frst scnd-temp) (return t))
    )
  )

;(print (appearsp '(c a t) '(t c a t g)))
;(print (appearsp '(c a t) '(t c g t g)))

;g.
;Writ a predicate COVERP that returns T if its first input, repeated
;some number of times, matches all of its second input. Example:
;(A G C) covers (A G C A G C A G C) but not (A G C T T G). You
;may assume that neither strand will be NIL
(defun coverp(cover lst)
  (do
    ((lst-temp lst (cdr lst-temp)))
    ((not (prefixp cover lst-temp)) nil)
    (when (null lst-temp) (return t))
    (do
      ((cover-temp (cdr cover) (cdr cover-temp)))
      ((null cover-temp) t)
      (setf lst-temp (cdr lst-temp))
      )
    )
  )

;(print (coverp '(a g c) '(a g c a g c a g c)))
;(print (coverp '(a g c) '(a g c a g  a g c)))

;h.
;Write a function PREFIX that returns the leftmost N bases of A DNA
;strand. (PREFIX 4 '(C G A t T A G)) should return (C G A T). Do
;not confuse the function PREFIX with the predicate PREFIXP
(defun prefix(n lst)
  (do*
    ((i 1 (1+ i))
     (lst-temp lst (cdr lst-temp))
     (result  (list (car lst-temp)) (append result (list (car lst-temp)))))
    ((equal i n) result)
    )
  )

;(print (prefix 4 '(C G A T T A G)))

;i.
;Biologists have found that portions of some naturally occurring
;DNA strands consist of many repetitions of a short "kernel"
;sequence. Write a function KERNEL that returns the shortes prefix
;of a DNA strand that can be repeated to cover the strand.
;(KERNEL '(A G C A G C A G C)) should return (A G C). (KERNEL '(A A A A A))
;should return (A). (KERNEL '(A G G T C)) should return (A G G T C), 
;because in this case only a single repetition of the entire 
;strand will cover the strand. Hint: to find the kernel, look at
;prefixes of increasing length until you find one that can be repeated
;to cover the strand.

