-- 関数の定義
-- 新たな名前を定義する際には「:=」を使用する
def hello := "Hello"

-- 通常は関数の定義の際には型も併せて定義
def lean : String := "Lean"
-- 関数の使用例
#eval String.append hello (String.append " " lean)
-- output
-- "Hello Lean"


-- 1を足す関数を定義
def add1 (n : Nat) : Nat := n + 1

#eval add1 7
-- output
-- 8

-- 大きい方を出力する関数
def maximum (n : Nat) (k : Nat) : Nat :=
  if n < k then
    k
  else n

-- example
#eval maximum (14) (46)
-- output
-- 46


-- Exercise
def joinStringsWith (a : String) (b : String) (c : String) : String :=
  (b.append a ).append c

#eval joinStringsWith "," "one" "and another"