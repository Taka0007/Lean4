-- import
import Lean

-- define function
def isPrime (n : Nat) : Bool :=
  sorry


-- test
example : isPrime 7 = true := rfl
example : isPrime (7 * 43) = false := rfl
example : isPrime 307 = true := rfl
example : isPrime 0 = false := rfl
example : isPrime 1 = false := rfl
