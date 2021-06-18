module Fila (Fila (Queue), enqueue, dequeue, first, emptyQueue) where

data Fila t = Queue [t]
    deriving (Eq, Show)

-- adiciona no final
enqueue :: Fila t -> t -> Fila t
enqueue (Queue s) x = Queue s++x

-- retira do comeco
dequeue :: Fila t -> Fila t
dequeue (Queue []) = error "Empty"
dequeue (Queue (x:s)) = Queue s

first :: Fila t -> t
first (Queue []) = error "Empty"
first (Queue (x:s)) = x

emptyQueue :: Fila t
emptyQueue = Queue []