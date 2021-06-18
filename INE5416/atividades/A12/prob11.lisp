
(defun primeiros (lista n)
    (cond 
        ((null lista) nil)
        ((= n 0) nil)  ; 0-indexado
        (t (cons (car lista) (primeiros (cdr lista) (1- n))))
    )
)

(defun main ()
    (write-line (write-to-string (primeiros '(-2 1 0 2 3 -3 4 5) 3)))
)

(main)