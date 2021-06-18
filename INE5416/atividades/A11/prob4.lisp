
(defun xor (x y)
    (or (and (x (not y))) (and (not x) y))
)

(defun main()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (xor x y)))
)

(main)