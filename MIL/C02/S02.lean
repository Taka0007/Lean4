-- import
import Mathlib.Algebra.Ring.Defs
import Mathlib.Data.Real.Basic


variable (R : Type*) [Ring R]

#check (add_assoc : ∀ a b c : R, a + b + c = a + (b + c))
-- add_assoc : ∀ (a b c : R), a + b + c = a + (b + c)

#check (add_comm : ∀ a b : R, a + b = b + a)
-- add_comm : ∀ (a b : R), a + b = b + a

#check (zero_add : ∀ a : R, 0 + a = a)
-- ero_add : ∀ (a : R), 0 + a = a

#check (add_left_neg : ∀ a : R, -a + a = 0)
-- add_left_neg : ∀ (a : R), -a + a = 0

#check (mul_assoc : ∀ a b c : R, a * b * c = a * (b * c))
-- mul_assoc : ∀ (a b c : R), a * b * c = a * (b * c)

#check (mul_one : ∀ a : R, a * 1 = a)
-- mul_one : ∀ (a : R), a * 1 = a

#check (one_mul : ∀ a : R, 1 * a = a)
-- one_mul : ∀ (a : R), 1 * a = a

#check (mul_add : ∀ a b c : R, a * (b + c) = a * b + a * c)
-- mul_add : ∀ (a b c : R), a * (b + c) = a * b + a * c

#check (add_mul : ∀ a b c : R, (a + b) * c = a * c + b * c)
-- add_mul : ∀ (a b c : R), (a + b) * c = a * c + b * c


theorem add_neg_cancel_right (a b : R) : a + b + -b = a := by
  sorry

theorem add_left_cancel {a b c : R} (h : a + b = a + c) : b = c := by
  sorry

theorem add_right_cancel {a b c : R} (h : a + b = c + b) : a = c := by
  sorry

theorem zero_mul (a : R) : 0 * a = 0 := by
  sorry

theorem neg_eq_of_add_eq_zero {a b : R} (h : a + b = 0) : -a = b := by
  sorry

theorem eq_neg_of_add_eq_zero {a b : R} (h : a + b = 0) : a = -b := by
  sorry

theorem neg_zero : (-0 : R) = 0 := by
  apply neg_eq_of_add_eq_zero
  rw [add_zero]

theorem neg_neg (a : R) : - -a = a := by
  sorry

theorem self_sub (a : R) : a - a = 0 := by
  sorry

theorem two_mul (a : R) : 2 * a = a + a := by
  sorry
