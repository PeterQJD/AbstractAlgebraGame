universe u

class MySemigroup (S : Type u) extends Mul S :=
  mul_assoc (a b c : S): a * b * c = a * (b * c)

namespace MySemigroup

def Idempotent {S : Type u} [MySemigroup S] (x : S) :  Prop := x * x = x

end MySemigroup

class MyInvSemigroup (S : Type u) extends MySemigroup S, Inv S where
  mul_inv_mul (a : S) : a * a⁻¹ * a = a
  inv_mul_inv (a : S) : a⁻¹ * a * a⁻¹ = a⁻¹

class MyCommSemigroup (S : Type u) extends MySemigroup S :=
  mul_comm (a b : S) : a * b = b * a

class MyMonoid (M : Type u) extends MySemigroup M :=
  e : M
  id_mul (a : M) : e * a = a
  mul_id (a : M) : a * e = a

class MyCommMonoid (M : Type u) extends MyMonoid M :=
  mul_comm (a b : M) : a * b = b * a

class MyGroup (G : Type u) extends MyMonoid G, Inv G :=
  inv_mul (a : G) : a⁻¹ * a = e
  mul_inv (a : G) : a * a⁻¹ = e

class MyCommGroup (G : Type u) extends MyGroup G :=
  mul_comm (a b : G) : a * b = b * a
