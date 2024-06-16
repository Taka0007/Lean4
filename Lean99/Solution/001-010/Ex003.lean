-- import
import Lean

-- define function
def elementAt (l : List α) (k : Nat) : Option α :=
  if l.length <= k-1 then
    none
  else if k = 0 then
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

-- test cases of Lean99
example : elementAt ['a', 'b', 'c', 'd', 'e'] 3 = some 'c' := by rfl
example : elementAt ['a', 'b', 'c', 'd', 'e'] 6 = none := by rfl
example : elementAt ['a', 'b', 'c', 'd', 'e'] 0 = none := by rfl
example : elementAt ([] : List α) 0 = none := by rfl
example : elementAt [1, 2, 3] 2 = some 2 := by rfl
