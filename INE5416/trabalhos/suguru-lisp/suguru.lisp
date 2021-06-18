(defstruct game
    board  ; position matrix for the board, use with make-array
    tectons  ; list of positions in each tecton
)

; returns value from board in position (i,j)
(defun get-value (puzzle i j)
    (let ((len (array-dimension (game-board puzzle) 0)))
        (if (or (>= i len) (>= j len) (< i 0) (< j 0))
            nil
            (aref (game-board puzzle) i j))))

; returns tecton on position k in list
(defun get-tecton (puzzle k)
    (if (>= k (array-dimension (game-tectons puzzle) 0))
        nil
        (aref (game-tectons puzzle) k)))

; tests if position is in tecton
(defun in-tecton (tecton i j)
    (if (null tecton)
        nil
        (or
            (equal (car tecton) (list i j))
            (in-tecton (cdr tecton) i j))))

; returns tecton of which a position is part of -- start with i=0
(defun find-tecton-position (puzzle i j)
    (if (null puzzle)
        nil
        (tecton-position-aux puzzle i j 0)))

(defun tecton-position-aux (puzzle i j k)
    (let ((tec (get-tecton puzzle k)))
        (cond
            ((>= k (length (game-tectons puzzle))) nil)
            ((in-tecton tec i j) (get-tecton puzzle k))
            (t (tecton-position-aux puzzle i j (1+ k))))))

; returns next open position (value=0) in board
(defun next-open-position (puzzle) 
    (next-open-position-aux (game-board puzzle) 0 0))
(defun next-open-position-aux (board i j)
    (let ((len (array-dimension board 0)))
        (cond
            ((= 0 (aref board i j)) (list i j))
            ((> len (1+ j)) (next-open-position-aux board i (1+ j)))
            ((> len (1+ i)) (next-open-position-aux board (1+ i) 0))
            (t nil))))

; generate list (1 .. n)
(defun initial-values (n)
    (let ((lst ()))
        (dotimes (i n (nreverse lst))
            (push (1+ i) lst))))

; generate list of valid moves in given position
(defun valid-moves (puzzle i j)
    (let ((moves (initial-values (length (find-tecton-position puzzle i j))))
         (invalid-moves (union (invalid-moves-neighbors puzzle i j) (invalid-moves-tecton puzzle i j))))
            (remove-if (lambda (val) (member val invalid-moves)) moves)))

; generate list of moves not allowed around a given position
(defun invalid-moves-neighbors (puzzle i j) 
    (elements-in-square puzzle (1- i) (1- j) 0 0 ()))

; generate a list with all non-zero elements in a square 3x3 based on the top-left position (i, j)
(defun elements-in-square (puzzle i j iti itj elemList)
    (let ((val (get-value puzzle (+ i iti) (+ j itj))))
        (cond
            ((= 3 iti) elemList)  ; se i = 3, foram as 3 linhas
            ((= 3 itj) (elements-in-square puzzle i j (1+ iti) 0 elemList))  ; se j = 3, passa pra proxima linha
            ((or 
                (null val)  ; se o valor em i ou j está fora da matriz
                (= val 0)  ; se não foi preenchido
                (member val elemList))  ; se o valor já está na lista
                    (elements-in-square puzzle i j iti (1+ itj) elemList))  ; não colocamos em elemList
            (t (elements-in-square puzzle i j iti (1+ itj) (cons val elemList))))))  ; caso contrário, coloca

; generate list of moves not allowed in a given tecton 
(defun invalid-moves-tecton (puzzle i j)
    (let ((tec (find-tecton-position puzzle i j)))
        (filled-elements puzzle tec ())))

; returns all elements already filled in a tecton (antigo tectonElementList)
(defun filled-elements (puzzle tec elemList)
    (if (null tec)
        elemList
        (let ((i (elt (car tec) 0))
              (j (elt (car tec) 1)))
                (if (= (get-value puzzle i j) 0)
                    (filled-elements puzzle (cdr tec) elemList)
                    (filled-elements puzzle (cdr tec) (cons (get-value puzzle i j) elemList))))))

; this considers puzzle a mutable variable
(defun update (puzzle i j value)
    (progn
        (setf (aref (game-board puzzle) i j) value)
        puzzle))

; backtracking function
(defun suguru-solver (puzzle)
    (let ((next (next-open-position puzzle)))
        (cond 
            ((null next) puzzle)  ; resolvido
            ((null (valid-moves puzzle (elt next 0) (elt next 1))) nil)  ; deadtrail
            (t (loop for try in (valid-moves puzzle (elt next 0) (elt next 1))
                do (let ((result 
                    (suguru-solver (update puzzle (elt next 0) (elt next 1) try))))
                    (if (null result)
                        (progn
                            (update puzzle (elt next 0) (elt next 1) 0)
                            nil)
                        (return-from suguru-solver result))))))))
