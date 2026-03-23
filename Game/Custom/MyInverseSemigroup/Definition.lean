import Mathlib.Algebra.Group.Defs

universe u

class MyInverseSemigroup (S : Type u) extends Mul S :=
(mul_assoc : ∀ a b c : S, a * b * c = a * (b * c))

def MyInverseSemigroup.Weak_inverse {S : Type u} [MyInverseSemigroup S] (x y : S) : Prop :=
x * y * x = x ∧ y * x * y = y

def MyInverseSemigroup.Idempotent {S : Type u} [MyInverseSemigroup S] (x : S) : Prop :=
x * x = x
