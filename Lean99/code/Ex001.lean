import Lean

def lastOfList {α : Type} (l : List α) : Option α :=
  match l with
  | [] => none
  | [x] => some x
  | _ :: xs => lastOfList xs

def exampleList : List Nat := [1, 2, 3, 4, 5]
def exampleList2 : List Nat := [1,2,3]

#eval lastOfList exampleList  -- some 5
#eval lastOfList exampleList2 -- some 3
#eval lastOfList ([] : List Nat)  -- none
