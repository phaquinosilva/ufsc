
(defun ocorrencias (lista dado)
    (cond 
        ((null lista) 0)
        ((= dado (car lista)) (1+ (ocorrencias (cdr lista) dado)))
        (t (ocorrencias (cdr lista) dado))
    )
)


(defun main ()
    (write-line (write-to-string (ocorrencias '(-2 1 0 2 3 -3 4 5) 7)))
    (write-line (write-to-string (ocorrencias '(-2 1 0 2 3 -3 2 5) 2)))
    (write-line (write-to-string (ocorrencias '(-2 1 0 2 3 -3 2 5) 5)))
)

(main)
