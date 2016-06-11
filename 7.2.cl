;Let the global variable DAILY-PLANET contain the following table:
(setf daily-planet '(
                     (olsen jimmy 123-76-4535 cub-reporter)
                     (kent  clark 089-52-6787 reporter)
                     (lane  lois  951-26-1438 reporter)
                     (white perry 355-16-7439 editor)))
;each table entry consists of a last name, a first name, a social security
;number, and a job title. Use MAPCAR on thi table to extract a list of social security numbers;
(print (mapcar #'third daily-planet))
