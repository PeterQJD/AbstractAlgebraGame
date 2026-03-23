import Mathlib.Algebra.Group.Defs

universe u

class MyMonoid (M : Type u) extends Mul M, One M :=
  (mul_assoc : ∀ a b c : M, a * b * c = a * (b * c))
  (one_mul : ∀ a : M, 1 * a = a)
  (mul_one : ∀ a : M, a * 1 = a)

class MyCommMonoid (M : Type u) extends Mul M, One M :=
  (mul_assoc : ∀ a b c : M, a * b * c = a * (b * c))
  (mul_comm : ∀ a b : M, a * b = b * a)
  (one_mul : ∀ a : M, 1 * a = a)
  (mul_one : ∀ a : M, a * 1 = a)
