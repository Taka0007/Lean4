import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Parity
open Nat


-- 2+2の型を確認
#check 2 + 2
-- output
-- 2 + 2 : ℕ



def f (x : ℕ) :=
  x + 3
#check f
-- output
-- f (x : ℕ) : ℕ
