
(defun enesimo (lista n)
    (cond 
        ((null lista) nil)
        ((= n 0) (car lista))  ; 0-indexado
        (t (enesimo (cdr lista) (1- n)))
    )
)

(defun main ()
    (write-line (write-to-string (enesimo '(-2 1 0 2 3 -3 4 5) 7)))
    (write-line (write-to-string (enesimo '(-2 1 0 2 3 -3 2 5) 2)))
    (write-line (write-to-string (enesimo '(-2 1 0 2 3 -3 2 5) 5)))
)

(main)
