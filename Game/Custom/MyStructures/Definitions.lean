universe u

class MySemigroup (S : Type u) extends Mul S :=
  mul_assoc (a b c : S): a * b * c = a * (b * c)

namespace MySemigroup

def Idempotent {S : Type u} [MySemigroup S] (x : S) :  Prop := x * x = x

end MySemigroup

class MyCommSemigroup (S : Type u) extends MySemigroup S :=
  mul_comm (a b : S) : a * b = b * a

/- open MySemigroup

class MyRegSemigroup (R : Type u) extends MySemigroup R where
  mul_inv_mul (a : R) : ∃ b : R, a * b * a = a
  inv_mul_inv (a : R) : ∃ b : R, b * a * b = b

namespace MyRegSemigroup

def IsInverse {S : Type u} [MyRegSemigroup S] (a b : S) : Prop := a * b * a = a ∧ b * a * b = b

end MyRegSemigroup

class MyInvSemigroup (I : Type u) extends MyRegSemigroup I where
  idem_comm (a b : I) : Idempotent a → Idempotent b → a * b = b * a -/

class MyInvSemigroup (I : Type u) extends MySemigroup I, Inv I where
  mul_inv_mul (a : I) : a * a⁻¹ * a = a
  inv_mul_inv (a : I) : a⁻¹ * a * a⁻¹ = a⁻¹

class MyMonoid (M : Type u) extends MySemigroup M :=
  e : M
  id_mul (a : M) : e * a = a
  mul_id (a : M) : a * e = a

class MyCommMonoid (M : Type u) extends MyMonoid M :=
  mul_comm (a b : M) : a * b = b * a

class MyGroup (G : Type u) extends MyMonoid G, Inv G :=
  mul_inv (a : G) : a * a⁻¹ = e
  inv_mul (a : G) : a⁻¹ * a = e

class MyCommGroup (G : Type u) extends MyGroup G :=
  mul_comm (a b : G) : a * b = b * a
