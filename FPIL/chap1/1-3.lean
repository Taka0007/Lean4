-- ロード用のURL
-- https://raw.githubusercontent.com/Taka0007/Lean4/main/FPIL/chap1/1-3.lean

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

-- (1)
def joinStringsWith (a : String) (b : String) (c : String) : String :=
  (b.append a ).append c

#eval joinStringsWith "," "one" "and another"
-- output
-- "one,and another"

-- (2)
#check joinStringsWith ": "
-- output
-- joinStringsWith ": " : String → String → String

-- (3)
def volume (a:Int) (b:Int) (c:Int) : Int :=
  a*b*c
-- example
#eval volume 472 7842957 73821791
-- output
-- 273279094528665864


-- Define Type

-- Stringって打ちたくないときは「Str=String」と定義すれば正常に動作する
def Str : Type := String
def aStr : Str := "This is a string."


def NaturalNumber : Type := Nat


--def thirtyEight : NaturalNumber := 38
-- 上記のようにすると、このようなエラーが出る
-- failed to synthesize instance
--  OfNat NaturalNumber 38

def thirtyEight : NaturalNumber := (38 : Nat)
-- こうすればOK


-- abbrev は新しい名前を定義する
abbrev N : Type := Nat
def thirtyNine : N := 39
#eval thirtyNine + 1
-- output
-- 40
