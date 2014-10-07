module Objects where

import Structure

-- Groups
data Cyclic = Cyclic Int | InfiniteCyclic deriving (Eq)
data Dihedral = Dihedral Int deriving (Eq)
data Elliptic = Elliptic Float Float deriving (Eq)

-- Group Elements
data Point = P Float Float | Infinity

instance Group Cyclic Int where 
    op (Cyclic n) a b = mod (a + b) n
    op InfiniteCyclic a b = a + b
    inv (Cyclic n) a = mod (n - a) n
    inv InfiniteCyclic a = -a
    id (Cyclic n) = 0
    id InfiniteCyclic = 0 

instance Group Dihedral (Int,Bool) where
    op (Dihedral n) (a,False) (b,False) = ((mod (a+b) n),False)
    op (Dihedral n) (a,False) (b,True) = ((mod (a+b) n),True)
    op (Dihedral n) (a,True) (b,False) = ((mod (a-b) n),True)
    op (Dihedral n) (a,True) (b,True) = ((mod (a-b) n),False)
    inv (Dihedral n) (a,False) = ((mod (n-a) n),False)
    inv (Dihedral n) (a,True) = ((mod (n-a) n),True)
    id (Dihedral n) = (0,False) 
