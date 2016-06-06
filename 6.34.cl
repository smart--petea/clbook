;Here is a table of states and some of their cities, stored in the global
;variable ATLAS:
(setf atlas '(
              (pennsylvania pittspurgh)
              (new-jersey newark)
              (pennsylvania johnstown)
              (ohio columbus)
              (new-jersey princeton)
              (new-jersey trenton)
              )
      )
;Suppose we wanted to find all the cities a given state contains. ASSOC
;returns only the first entry with a matching key, not all such entries, so
;for this table ASSOC cannot solve our problem. Redesign the table so that ASSOC can be used successfully.:w
(setf atlas1 '(
              (pennsylvania pittspurgh johnstown)
              (new-jersey newark princeton trenton)
              (ohio columbus)
              )
      )
