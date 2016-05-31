;Use COND to write a predicate BOILINGP that takes two inputs,
;TEMP and SCALE, and returns T if the temperature is above the
;boiling point of water on the specified scale. If the scale is
;FAHRENHEIT, the boiling point is 212 degrees; if CELSIUS, the
;boiling point is 100 degrees. Also write versions using IF and
;AND/OR instead COND
(defun boilingp-cond(temp scale)
  (cond ((equal scale 'CELSIUS) (> temp 100))
        ((equal scale 'FAHRENHEIT) (> temp 212))
         (t 'unrecognizable-scale)
        )
  )

(defun boilingp-if(temp scale)
  (if (equal scale 'CELSIUS)
    (> temp 100)
    (if (equal scale 'FAHRENHEIT)
      (> temp 212)
      'unrecognizable-scale
      )
    )
  )

(print (boilingp-cond 230 'FAHRENHEIT))
(print (boilingp-cond -230 'FAHRENHEIT))

(print (boilingp-if 230 'CELSIUS))
(print (boilingp-if -230 'CELSIUS))
