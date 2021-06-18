
(defun menor (lista)
    (if (null lista) 
        0
        (if (< (car lista) (menor (cdr lista))) 
            (car lista) 
            (menor (cdr lista))
        )
    )
)

(defun main ()
    (write-line (write-to-string (menor '(-2 1 0 2 3 -3 4 5))))
)

(main)