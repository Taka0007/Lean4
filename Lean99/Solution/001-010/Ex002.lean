-- import
import Lean

-- define function
def myButLast (l : List α) : Option α :=
  if l.length <= 1 then
    none
  else
    let num:= l.length - 2;
    l[num]?

-- test
def exampleList  : List Nat := [1, 2, 3, 4, 5]
def exampleList2 : List Nat := [1, 2, 3]
def exampleList3 : List Nat := [1, 2]

#eval myButLast exampleList  -- some 4
#eval myButLast exampleList2 -- some 2
#eval myButLast ([] : List Nat)  -- none
#eval myButLast exampleList3   -- some 1
