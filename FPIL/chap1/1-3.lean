-- 関数の定義
-- 新たな名前を定義する際には「:=」を使用する
def hello := "Hello"

-- 通常は関数の定義の際には型も併せて定義
def lean : String := "Lean"
-- 関数の使用例
#eval String.append hello (String.append " " lean)
-- output
-- "Hello Lean"

