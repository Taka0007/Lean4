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


def FermatLastTheorem :=
  ∀ x y z n : ℕ, n > 2 ∧ x * y * z ≠ 0 → x ^ n + y ^ n ≠ z ^ n
#check FermatLastTheorem
-- output
-- FermatLastTheorem : Prop

theorem easy : 2 + 2 = 4 :=
  rfl
#check easy
-- output
-- easy : 2 + 2 = 4

theorem hard : FermatLastTheorem :=
  sorry
#check hard
-- output
-- hard : FermatLastTheorem
