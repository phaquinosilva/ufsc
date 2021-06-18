(defstruct no
    n
    esq
    dir
)

(setq minhaArvore
    (make-no 
        :n 52
        :esq (make-no :n 32               ;pode omitir o NIL 
                      :esq (make-no :n 12 :esq (make-no :n 32 :esq NIL :dir NIL) :dir NIL) 
                      :dir (make-no :n 35 :esq NIL :dir NIL)
             )
        :dir (make-no :n 56 
                      :esq (make-no :n 55 :esq NIL :dir NIL) 
                      :dir (make-no :n 64 :esq NIL :dir (make-no :n 32 :esq NIL :dir NIL))
             ) 
    )
)

(defun soma (arv)
    (if (null arv)
        0
        (+ 
            (no-n arv) 
            (soma (no-esq arv)) 
            (soma (no-dir arv))
        )
    )
)

(defun buscaElemento (arv x)
    (if (null arv)
        NIL
        (or 
            (= (no-n arv) x)
            (buscaElemento (no-esq arv) x) 
            (buscaElemento (no-dir arv) x)
        )
    )
)

(defun minimo (x y)
    (if (< x y)
        x
        y
    )
)

(setq INF 1000)

(defun minimoElemento (arv)
    (if (null arv)
        INF
        (minimo 
            (no-n arv) 
            (minimo 
                (minimoElemento (no-esq arv)) 
                (minimoElemento (no-dir arv))
            )
        )
    )
)

(defun incrementa (arv x)
    (if (not (null arv))
        (progn
            (setf (no-n arv) (+ (no-n arv) x))
            (incrementa (no-esq arv) x)
            (incrementa (no-dir arv) x)
        )
    )
)

(defun ocorrenciasElemento (arv x)
    (if (null arv)
        0
        (+ 
            (if (= (no-n arv) x)
                1
                0
            )
            (ocorrenciasElemento (no-esq arv) x)
            (ocorrenciasElemento (no-dir arv) x)
        )
    )
)

(defun maioresQueElemento (arv x)
    (if (null arv)
        0
        (+
            (if (> (no-n arv) x)
                1
                0
            )
            (maioresQueElemento (no-esq arv) x)
            (maioresQueElemento (no-dir arv) x)
        )
    )
)

(defun quantidade (arv)
    (if (null arv)
        0
        (+ 
            1
            (quantidade (no-esq arv))
            (quantidade (no-dir arv))
        )
    )
)

(defun mediaElementos (arv)
    (if (null arv)
        0
        (/ (float (soma arv)) (quantidade arv))
    )
)

(defun elementos (arv)
    (if (null arv)
        nil
        (cons
            (no-n arv)
            (append (elementos (no-esq arv)) (elementos (no-dir arv)))
        )
    )
)

(defun substituir (arv x y)
    (if (null arv)
        nil
        (progn
            (setf (no-n arv) (if (= (no-n arv) x) y (no-n arv)))
            (substituir (no-esq arv) x y)
            (substituir (no-dir arv) x y)
        )
    )
)

(defun preordem (arv)
    (if (null arv)
        nil
        (append 
            (list (no-n arv))
            (preordem (no-esq arv))
            (preordem (no-dir arv))
        )
    )
)

(defun emordem (arv)
    (if (null arv)
        nil
        (append 
            (emordem (no-esq arv))
            (list (no-n arv))
            (emordem (no-dir arv))
        )
    )
)

(defun posordem (arv)
    (if (null arv)
        nil
        (append 
            (posordem (no-esq arv))
            (posordem (no-dir arv))
            (list (no-n arv))
        )
    )
)

(defun subtraiParesImpares (arv)
    (if (null arv)
        0
        (+  
            (* (no-n arv) (if (= (mod (no-n arv) 2) 0) 1 -1))
            (subtraiParesImpares (no-esq arv)) 
            (subtraiParesImpares (no-dir arv))
        )
    )
)

(defun novoNo (x)
    (make-no
        :n x
        :esq nil
        :dir nil
    )
)

; to-do
; (defun inserir (arv x))

(defun main()
    (write-line (write-to-string (soma minhaArvore)))
    (write-line (write-to-string (buscaElemento minhaArvore 35)))
    (write-line (write-to-string (buscaElemento minhaArvore 36)))
    (write-line (write-to-string (minimoElemento minhaArvore)))
    ; (write-line (write-to-string (incrementa minhaArvore 2)))
    (write-line (write-to-string minhaArvore))
    (write-line (write-to-string (ocorrenciasElemento minhaArvore 32)))
    (write-line (write-to-string (maioresQueElemento minhaArvore 50)))
    (write-line (write-to-string (mediaElementos minhaArvore)))
    (write-line (write-to-string (substituir minhaArvore 32 -5)))
    (write-line (write-to-string (elementos minhaArvore)))
    (write-line (write-to-string (posordem minhaArvore)))
    (write-line (write-to-string (preordem minhaArvore)))
    (write-line (write-to-string (emordem minhaArvore)))
    (write-line (write-to-string (subtraiParesImpares minhaArvore)))
    (write-line (write-to-string minhaArvore))
    
)

(main)