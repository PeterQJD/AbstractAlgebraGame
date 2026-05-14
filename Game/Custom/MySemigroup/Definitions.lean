import Mathlib.Algebra.Group.Defs

universe u

class MySemigroup (S : Type u) extends Mul S :=
  (mul_assoc : ∀ a b c : S, a * b * c = a * (b * c))


def MySemigroup.Idempotent {S : Type u} [MySemigroup S] (x : S) :  Prop := x * x = x

class MyCommSemigroup (S : Type u) extends MySemigroup S :=
  (mul_comm : ∀ a b : S, a * b = b * a)
