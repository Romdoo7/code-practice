(defun main ()
  (let* ((s (read-line))
         (y (parse-integer s :start 0 :end 4))
         (m (parse-integer s :start 5 :end 7))
         (d (parse-integer s :start 8 :end 10)))
    (if (or (< y 2019)
            (and (= y 2019)
                 (< m 4))
            (and (= y 2019)
                 (= m 4)
                 (<= d 30)))
        (write-line "Heisei")
        (write-line "TBD"))))
 
#-swank(main)
; (main)