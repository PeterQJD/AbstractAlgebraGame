import Mathlib.Algebra.Group.Defs

universe u

class MyMonoid (M : Type u) extends Mul M, One M :=
  (mul_assoc : ∀ a b c : M, a * b * c = a * (b * c))
  (one_mul : ∀ a : M, 1 * a = a)
