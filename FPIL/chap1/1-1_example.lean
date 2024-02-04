-- 1+2の計算
-- evalは計算結果を返す

#eval 1 + 2
-- output
-- 3


-- 下記のように、leanのevalは一般的な計算規則に従う
#eval 1 + 2 * 5
-- output
-- 11


-- 文字列の結合を行うことも可能だが、これはエラーになる (下記がエラーメッセージ)
#eval String.append("Hello, ", "Lean!")
-- expression
-- String.append
-- has type
--   String → String → String
-- but instance
--   Lean.Eval (String → String → String)
-- failed to be synthesized, this instance instructs Lean on how to display the resulting value, recall that any type implementing the `Repr` class also implements the `Lean.Eval` class


-- このように変えれば動く
#eval String.append "Hello, " "Lean!"
-- output
-- "Hello, Lean!"


-- 結合させたい文字を最初に持ってくることも可能
#eval String.append "great " (String.append "oak " "tree")
-- "great oak tree"
