-- import
import Lean

variable {α : Type}

def myLength (l : List α) : Nat :=
  l.length

-- The following codes are for test and you should not edit these.

example : myLength [123, 456, 789] = 3 := by rfl
example : myLength ['L', 'e', 'a', 'n', '4'] = 5 := by rfl
example : myLength [False, True, True] = 3 := by rfl
example : myLength ([] : List α) = 0 := by rfl
