import Mathlib.Algebra.Group.Defs

class MyStructure (S : Type u) extends Inv S, Mul S, One S :=
(mul_assoc : ∀ a b c : S, a * b * c = a * (b * c))
(one_mul : ∀ a : S, 1 * a = a)
(mul_one : ∀ a : S, a * 1 = a)
(mul_left_inv : ∀ a : S, a⁻¹ * a = 1)
(mul_right_inv : ∀ a : S, a * a⁻¹ = 1)
(mul_comm : ∀ a b : S, a * b = b * a )

/--An inverse of an element x in a semigroup S is some y ∈ S such that:-/
def MyStructure.weak_inverse {S : Type u} [MyStructure S] (x y : S) : Prop :=
x * y * x = x ∧ y * x * y = y

def MyStructure.Idempotent {S : Type u} [MyStructure S] (x : S) : Prop :=
x * x = x
