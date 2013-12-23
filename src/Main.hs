import Structure
import Objects

main :: IO ()
main = do
    print (op (Dihedral 4) ((3::Int),True) ((5::Int),False)) 
