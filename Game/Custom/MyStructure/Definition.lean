import Mathlib.Algebra.Group.Defs

class MyStructure (S : Type u) extends Inv S, Mul S, One S :=
(mul_assoc : ∀ a b c : S, a * b * c = a * (b * c))
(one_mul : ∀ a : S, 1 * a = a)
(mul_left_inv : ∀ a : S, a⁻¹ * a = 1)
