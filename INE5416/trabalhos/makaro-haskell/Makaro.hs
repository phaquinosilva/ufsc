module Makaro where

import Data.List

type Pos = (Int, Int)
type Tectons = [Pos]
type Arrow = (Pos, Char)
type Data = [[Int]]
type Puzzle = (Data, [Tectons], [Arrow])

--Check all valid moves in given Pos
-- only called in positions guaranteed to be open
validMoves :: Puzzle -> Pos -> [Int]
validMoves puz pos = validMovesArrow puz pos \\ (invalidMovesOrto puz pos `union` invalidMovesTecton puz pos) 

--Check for valid moves given by Tectons limitations
invalidMovesTecton :: Puzzle -> Pos -> [Int]
invalidMovesTecton = tectonListElem

--Check for valid moves given by ortogonal elements limitations
invalidMovesOrto :: Puzzle -> Pos -> [Int]
invalidMovesOrto puz pos = map (getValue puz) (ortoPosList pos)

--Check for valid moves given by ortogonal Arrow
validMovesArrow :: Puzzle -> Pos -> [Int]
validMovesArrow puz pos = validMovesArrowChecker puz pos 0 [1..(maxValueTectons (cellTectons puz pos))]

--Helper function for validMovesArrow
validMovesArrowChecker :: Puzzle -> Pos -> Int -> [Int] -> [Int]
validMovesArrowChecker puz pos i values 
    | i > 3 = values
    | otherwise = validMovesArrowChecker puz pos (i+1) (arrowMovesFilter puz pos (ortoPos pos i) values)

--Filter a list of valid moves based on an Arrow
arrowMovesFilter :: Puzzle -> Pos -> Pos -> [Int] -> [Int]
arrowMovesFilter puz cellPos arrowPos values
    -- if it's an arrow that points to the cell we're evaluating
    | arrow && cellPos == direction = filter (>ortoMax puz arrowPos) values
    -- if it's an arrow that points somewhere else that's been filled
    | arrow && cellPos /= direction && arrowHeadValue > 0 = filter (<arrowHeadValue) values
    -- if it's an arrow that points somewhere empty (will be evaluated later) OR if it's not an arrow 
    | otherwise = values
    where (arrow, direction, arrowHeadValue) = (isArrow puz arrowPos, getArrowHead (getArrow puz arrowPos), getValue puz (getArrowHead (getArrow puz arrowPos)))
    
--Return all the ortogonal positions
ortoPosList :: Pos -> [Pos]
ortoPosList (x, y) = [(x-1,y), (x,y+1), (x+1,y), (x,y-1)]

--Return an ortogonal position based in a Int value (n = 0, clockwise)
ortoPos :: Pos -> Int -> Pos
ortoPos pos i = ortoPosList pos !! i

--Return the value of all ortogonal elements
ortoValues :: Puzzle -> Pos -> [Int]
ortoValues puz pos = map (getValue puz) (ortoPosList pos)

--Check the maximum value around
ortoMax :: Puzzle -> Pos -> Int
ortoMax (m, t, a) (x, y)
    | x < 0 || x > length m -1 = 0
    | y < 0 || y > length m -1 = 0
    | otherwise = maximum (ortoValues (m, t, a) (x, y))

--Check if cell in Pos is an Arrow from the Puzzle
isArrow :: Puzzle -> Pos -> Bool
isArrow (_, _, a) pos   | not (any ((==pos).fst) a) = False 
                        | otherwise = True

--Return an Arrow from the Puzzle in given Pos
getArrow :: Puzzle -> Pos -> Arrow
getArrow (_, _, a) pos = head (filter ((==pos).fst) a)

--Return given Arrow's Char
getArrowChar :: Arrow -> Char
getArrowChar (_, c) = c

--Return given Arrow's Pos
getArrowPos :: Arrow -> Pos
getArrowPos (pos, _) = pos

--Get the Pos which the Arrow points to
getArrowHead :: Arrow -> Pos
getArrowHead ((x, y), c)    
    | c == 'n' = (x-1, y)
    | c == 'e' = (x, y+1)
    | c == 's' = (x+1, y)
    | c == 'w' = (x, y-1)

--Maximum value that a cell that lelongs to a list of Tectons could have
maxValueTectons :: [Tectons] -> Int
maxValueTectons t = minimum (map length t)

--List of Tectons that the Pos is part of
cellTectons :: Puzzle -> Pos -> [Tectons]
cellTectons (_, t, _) p = filter (elem p) t

--List of elements in all Tectons that the Pos is part of
tectonListElem :: Puzzle -> Pos -> [Int]
tectonListElem puz pos = unionAll (map (tectonElem puz) (cellTectons puz pos))

--List of elements in given Tecton
tectonElem :: Puzzle -> Tectons -> [Int]
tectonElem p = map (getValue p)

--Get value in the puzzle matrix from pos (row, column)
getValue :: Puzzle -> Pos -> Int
getValue (m, _, _) (x, y)   
    | x < 0 || x > length m -1 = 0
    | y < 0 || y > length m -1 = 0
    | otherwise = (m!!x)!!y

--Union function that unites a list of Int lists
unionAll :: [[Int]] -> [Int]
unionAll t  | null t = []
            | otherwise  = head t `union` unionAll (tail t)

-- Next open position in the board matrix
nextOpenPosition :: Puzzle -> Pos
nextOpenPosition (m, _, _) = nextOpenPosition' m (0,0)
nextOpenPosition' m (i,j) 
    | (m!!i)!!j == 0 = (i,j)
    | len > j+1 = nextOpenPosition' m (i, j+1)
    | len > i+1 = nextOpenPosition' m (i+1, 0)
    | otherwise = (-1, -1) -- fazendo as vezes de null
    where 
        len = length m
        
-- This implementation isn't as much a backtracking algorithm
-- as it is a breadth-first search of possible solutions.
-- Thus, it is capable of determining all solutions to a given board, not only the first one.
backtrack :: Puzzle -> [Puzzle]
backtrack s 
    -- solution
    | solved s = [s]
    -- deadtrail and can't develop further
    | invalid s = []
    -- concatenate recursively children nodes that can be developed
    | otherwise = concatMap backtrack $ children s

-- Non-deterministically develops all children nodes that can be developed
children :: Puzzle -> [Puzzle]
children s
    | pos == (-1,-1) = [s]
    | otherwise = [update s pos opt | opt <- validMoves s pos]
    where pos = nextOpenPosition s

-- Updates board with the new data being evaluated at the specified position
-- to be used only in conjunction with 'validMoves' and 'nextOpenPosition', as checks are
-- done in function call, and not in this function's body.
update :: Puzzle -> Pos -> Int -> Puzzle
update (board,a,b) (i, j) value =
    (updateList board i (updateList (board!!i) j value), a, b)

-- auxiliary function to update a list
updateList :: [t] -> Int -> t -> [t]
updateList ls i newValue = 
    let (xs, ys) = (splitAt i ls) in
        xs ++ [newValue] ++ (tail ys)

-- Evaluates if a puzzle finished and is invalid or it can't be developed further
-- only to be used after solved
invalid :: Puzzle -> Bool
invalid current = validMoves current (nextOpenPosition current)  == []

-- Returns true iff the matrix is finished (nextOpenPosition return (-1, -1) 
-- and every rule was obeyed (checked previously by design)
solved :: Puzzle -> Bool
solved current = nextOpenPosition current == (-1, -1)

-- Solve. Be careful, will scream if puzzle is impossible.
solve :: Puzzle -> Puzzle
solve = head . backtrack
