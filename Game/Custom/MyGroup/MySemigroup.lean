import Mathlib.Algebra.Group.Defs

class MySemigroup (G : Type u) extends Mul G :=
(mul_assoc : ∀ a b c : G, a * b * c = a * (b * c))
