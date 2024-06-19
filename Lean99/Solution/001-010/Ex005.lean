variable {α : Type}

def myReverse (l : List α) : List α :=
  match l with
  | [] => []
  | rev_a :: as => myReverse as ++ [rev_a]


-- test
#eval myReverse [1, 2, 3, 4] -- [4, 3, 2, 1]
#eval myReverse [3, 4, 5, 6] -- [6, 5, 4, 3]
example : myReverse [1, 2, 3, 4] = [4, 3, 2, 1] := rfl
example : myReverse ["man", "plan", "canal", "panama"]
  = ["panama", "canal", "plan", "man"] := rfl
