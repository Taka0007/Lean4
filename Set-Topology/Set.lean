-- import
import Mathlib.Tactic

-- 集合X,Y,Zを定義
variable {X Y Z : Type}

-- 自然数N,実数Rを定義
variable {N : ℕ}
variable {Q : ℚ}

/- ## 単射の定義
f(a)=f(b)ならばa=bが成立
-/
def Injective (f : X → Y) : Prop :=
  ∀ {x₁ x₂ : X}, f x₁ = f x₂ → x₁ = x₂ 

-- f(x) = x+1 が単射であることの証明
example : Injective (fun x : ℕ ↦ x + 1) := by
  rw [Injective]
  simp


-- f(x) = x+N (Nは自然数) が単射であることの証明
example : Injective (fun x : ℕ ↦ x + N) := by
  rw [Injective]
  simp
