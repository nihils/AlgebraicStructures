module Structure where

class Group g x where
    op :: g -> x -> x -> x
    inv :: g -> x -> x
    id :: g -> x 

class Ring r a where
    (.*),(.+) :: r -> a -> a -> a
    ainv :: r -> a -> a
    aid :: r -> a
    mid :: r -> a

class (Ring r a) => Field r a where
    minv :: r -> a -> a
