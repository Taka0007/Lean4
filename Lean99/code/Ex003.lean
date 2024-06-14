-- import
import Lean

-- define function
def elementAt (l : List α) (k : Nat) : Option α :=
  if l.length <= k-1 then
    none
  else
    l[k-1]?

-- test
def exampleList  : List Nat := [1, 2, 3, 4, 5]
def exampleList2 : List Nat := [1, 2, 3]
def exampleList3 : List Nat := [1, 2]

#eval elementAt exampleList 2  -- some 2
#eval elementAt exampleList2 2 -- some 2
#eval elementAt ([] : List Nat) 3  -- none
#eval elementAt exampleList3 56  -- none
