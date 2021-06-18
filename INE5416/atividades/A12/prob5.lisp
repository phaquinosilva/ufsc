
(defun busca (lista dado)
    (cond 
        ((null lista) nil)
        ((= dado (car lista)) T)
        (t (busca (cdr lista) dado))
    )
)


(defun main ()
    (write-line (write-to-string (busca '(-2 1 0 2 3 -3 4 5) 7)))
    (write-line (write-to-string (busca '(-2 1 0 2 3 -3 4 5) 2)))
)

(main)
