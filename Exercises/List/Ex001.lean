import Lean

def reverseList {α : Type} (l : List α) : List α :=
  -- write your code here!
  l

-- example & test
#eval reverseList [1, 2, 3, 4, 5]  -- [5, 4, 3, 2, 1]
