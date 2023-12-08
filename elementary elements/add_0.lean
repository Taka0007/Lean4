variable x : ℕ  -- 自然数の変数xを定義
def add (a b : ℕ) : ℕ := a + b  -- 二つの自然数を加算する関数
-- 自然数aに0を加えるとaになることの証明
theorem add_zero (a : ℕ) : add a 0 = a := 
  rfl
