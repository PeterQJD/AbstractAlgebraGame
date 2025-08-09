import Mathlib.Algebra.Group.Defs

class MyGroup (G : Type u) extends Inv G, Mul G, One G :=
(mul_assoc : ∀ a b c : G, a * b * c = a * (b * c))
(one_mul : ∀ a : G, 1 * a = a)
(mul_left_inv : ∀ a : G, a⁻¹ * a = 1)
