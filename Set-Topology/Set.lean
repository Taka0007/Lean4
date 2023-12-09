-- 集合X,Y,Zを定義
variable {X Y Z : Type}

/- ## 単射の定義
f(a)=f(b)ならばa=bが成立
-/
def Injective (f : X → Y) : Prop :=
  ∀ {x₁ x₂ : X}, f x₁ = f x₂ → x₁ = x₂ 
