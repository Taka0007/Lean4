import Mathlib.Data.Real.Basic

-- a,b,cは実数
-- 積の交換ができることの証明
example (a b c : ℝ) : a * b * c = b * (a * c) := by
  rw [mul_comm a b]
  -- ⊢ b * a * c = b * (a * c)
  rw [mul_assoc b a c]
  -- No goals

example (a b c : ℝ) : c * b * a = b * (a * c) := by
  rw [mul_comm c b]
  -- ⊢ b * c * a = b * (a * c)
  rw [mul_comm a c]
  -- ⊢ b * c * a = b * (c * a)
  rw [mul_assoc b c a]
  -- No goals





example (a b c : ℝ) : a * (b * c) = b * (a * c) := by
  sorry


example (a b c d e f : ℝ) (h : b * c = e * f) : a * b * c * d = a * e * f * d := by
  sorry

example (a b c d : ℝ) (hyp : c = b * a - d) (hyp' : d = a * b) : c = 0 := by
  sorry


example : (a + b) * (c + d) = a * c + a * d + b * c + b * d := by
  sorry

example (a b : ℝ) : (a + b) * (a - b) = a ^ 2 - b ^ 2 := by
  sorry
