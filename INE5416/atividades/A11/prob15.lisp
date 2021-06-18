
(defun gdc (a b)
    (if (= b 0)
        a
        (gdc b (mod a b))
    )
)

(defun coprimes (a b)
    (= (gcd a b) 1)
)

(defun totit (n i q)
    (cond ((= i n) q)
          ((coprimes n i) (totit n (+ i 1) (+ q 1)))
          ((totit n (+ i 1) q))
    )
)

(defun tot (n)
    (totit n 1 0)
)


(defun main()
    (setq n (read))
    (write-line (write-to-string (tot n)))
)

(main)