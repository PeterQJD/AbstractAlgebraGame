import Game.Custom.MySemigroup.Definitions

universe u

class MyMonoid (M : Type u) extends MySemigroup M :=
  (e : M)
  (id_mul : ∀ a : M, e * a = a)
  (mul_id : ∀ a : M, a * e = a)

class MyCommMonoid (M : Type u) extends MyMonoid M :=
  (mul_comm :∀ a b : M, a * b = b * a)

/- class MyMonoid (M : Type u) extends Mul M :=
  (e : M)
  (mul_assoc : ∀ a b c : M, a * b * c = a * (b * c))
  (id_mul : ∀ a : M, e * a = a)
  (mul_id : ∀ a : M, a * e = a)
  (mul_comm : ∀ a b : M, a * b = b * a)

class MyCommMonoid (M : Type u) extends Mul M :=
  (e : M)
  (mul_assoc : ∀ a b c : M, a * b * c = a * (b * c))
  (id_mul : ∀ a : M, e * a = a)
  (mul_id : ∀ a : M, a * e = a)
  (mul_comm : ∀ a b : M, a * b = b * a) -/
