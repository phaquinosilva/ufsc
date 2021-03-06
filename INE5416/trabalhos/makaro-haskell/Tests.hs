module Tests where

-- Test 3x3 puzzle
test3x3 = (m3, t3, a3) 
    where
        m3 = [  [0,  0, 0],
                [0, -1, 2],
                [1,  0, 0]
                ]
        t3 = [  [(0,0), (0,1), (1,0)],
                [(0,2), (1,2), (2, 2)],
                [(2, 0), (2, 1)]
                ]
        a3 = [  ((1, 1), 'n')  ]
    --  sol = [[1,  3, 1],
    --         [2, -1, 2],
    --         [1,  2, 3]]
    
-- Test 5x5 puzzle
test5x5 = (m5, t5, a5)
    where
        m5 = [  [ 0, 0,-1, 0, 0],
                [ 0, 0, 0, 0, 3],
                [ 0, 0, 0, 0,-1],
                [-1, 0, 0, 0, 0],
                [ 0, 0,-1, 0, 0]
                ]
        t5 = [  [(0,0),(0,1)],
                [(1,0),(2,0)],
                [(1,1),(2,1),(1,2)],
                [(0,3),(0,4),(1,3),(1,4)],
                [(2,2),(2,3),(3,2),(3,3)],
                [(4,0),(4,1),(3,1)],
                [(4,3),(4,4),(3,4)]
                ]    
        a5 = [  ((0,2), 'w'), ((3,0), 'e'), 
                ((4,2), 'w'), ((2,4),'w')
                ]
        -- solution = [
        --         [1, 2, -1, 1, 4],
        --         [2, 3, 1, 2, 3],
        --         [1, 2, 3, 4, -1],
        --         [-1, 3, 1, 2, 3],
        --         [1, 2, -1, 1, 2]
        -- ]

-- Test 8x8 puzzle
test8x8 = (m8, t8, a8)
    where
        m8 = [  [ 0,  2,  0, -1,  0, -1,  0, -1],
                [-1,  0,  0,  0,  0,  0,  4,  0],
                [ 0,  0,  3,  0,  0,  2,  0,  1],
                [-1,  1,  0,  0, -1,  0,  0,  0],
                [ 1,  0, -1,  0,  0,  0,  0,  0],
                [ 0,  3,  0, -1,  0,  1,  4,  0],
                [ 3, -1,  1, -1,  0,  0, -1,  0],
                [ 2,  0, -1,  0,  3,  1,  0,  1]
                ]
        t8 = [  [(0,0), (0,1)],
                [(0,2), (1,1), (1,2), (2,2)],
                [(1,3), (2,3), (2,4)],
                [(0,4), (1,4), (1,5)],
                [(0,6), (1,6), (1,7), (2,6)],
                [(2,0), (2,1)],
                [(2,5), (3,5), (4,5)],
                [(2,7), (3,7), (4,7)],
                [(3,1), (4,1)],
                [(3,2), (3,3)],
                [(3,6), (4,6)],
                [(4,0), (5,0)],
                [(4,3), (4,4)],
                [(5,1), (5,2), (6,2)],
                [(5,4), (6,4)],
                [(5,5), (6,5)],
                [(5,6), (5,7), (6,7), (7,7)],
                [(6,0), (7,0), (7,1)],
                [(7,3), (7,4), (7,5), (7,6)]
                ]
        a8 = [  ((0,3), 'w'), ((0,5), 'w'), ((0,7), 's'), 
                ((3,4), 'n'), 
                ((6,3), 's'), ((6,6), 'n'), 
                ((7,2), 'e')
                ]
        -- solution can be found in https://www.janko.at/Raetsel/Makaro/index.htm

-- It can also be used (tiringly) to solve sudoku puzzles (9x9), 
-- though why would anyone purposely do that?
testSudoku = (mSud, tSud, aSud)
    where
        mSud = [[ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0],
                [ 0,  0,  0,  0,  0,  0,  0,  0,  0]
                ]
        tSud = [[(0, 0), (0, 1), (0, 2), (0, 3), (0, 4), (0, 5), (0, 6), (0, 7), (0, 8)],
                [(1, 0), (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8)],
                [(2, 0), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8)],
                [(3, 0), (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8)],
                [(4, 0), (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8)],
                [(5, 0), (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8)],
                [(6, 0), (6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8)],
                [(7, 0), (7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 6), (7, 7), (7, 8)],
                [(8, 0), (8, 1), (8, 2), (8, 3), (8, 4), (8, 5), (8, 6), (8, 7), (8, 8)],
                [(0, 0), (1, 0), (2, 0), (3, 0), (4, 0), (5, 0), (6, 0), (7, 0), (8, 0)],
                [(0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1)],
                [(0, 2), (1, 2), (2, 2), (3, 2), (4, 2), (5, 2), (6, 2), (7, 2), (8, 2)],
                [(0, 3), (1, 3), (2, 3), (3, 3), (4, 3), (5, 3), (6, 3), (7, 3), (8, 3)],
                [(0, 4), (1, 4), (2, 4), (3, 4), (4, 4), (5, 4), (6, 4), (7, 4), (8, 4)],
                [(0, 5), (1, 5), (2, 5), (3, 5), (4, 5), (5, 5), (6, 5), (7, 5), (8, 5)],
                [(0, 6), (1, 6), (2, 6), (3, 6), (4, 6), (5, 6), (6, 6), (7, 6), (8, 6)],
                [(0, 7), (1, 7), (2, 7), (3, 7), (4, 7), (5, 7), (6, 7), (7, 7), (8, 7)],
                [(0, 8), (1, 8), (2, 8), (3, 8), (4, 8), (5, 8), (6, 8), (7, 8), (8, 8)],
                [(0, 0), (1, 0), (2, 0), (0, 1), (1, 1), (2, 1), (0, 2), (1, 2), (2, 2)],
                [(3, 0), (4, 0), (5, 0), (3, 1), (4, 1), (5, 1), (3, 2), (4, 2), (5, 2)],
                [(6, 0), (7, 0), (8, 0), (6, 1), (7, 1), (8, 1), (6, 2), (7, 2), (8, 2)],
                [(0, 3), (1, 3), (2, 3), (0, 4), (1, 4), (2, 4), (0, 5), (1, 5), (2, 5)],
                [(3, 3), (4, 3), (5, 3), (3, 4), (4, 4), (5, 4), (3, 5), (4, 5), (5, 5)],
                [(6, 3), (7, 3), (8, 3), (6, 4), (7, 4), (8, 4), (6, 5), (7, 5), (8, 5)],
                [(0, 6), (1, 6), (2, 6), (0, 7), (1, 7), (2, 7), (0, 8), (1, 8), (2, 8)],
                [(3, 6), (4, 6), (5, 6), (3, 7), (4, 7), (5, 7), (3, 8), (4, 8), (5, 8)],
                [(6, 6), (7, 6), (8, 6), (6, 7), (7, 7), (8, 7), (6, 8), (7, 8), (8, 8)]
            ] -- this one wasn't done by hand, thx python s2
        aSud = []
