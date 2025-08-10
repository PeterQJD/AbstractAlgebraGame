import Mathlib.Algebra.Group.Defs

universe u

class MyMagma (M : Type u) extends Mul M

class MyCommMagma (M : Type u) extends MyMagma M where
  mul_comm : ∀ a b : M, a * b = b * a
