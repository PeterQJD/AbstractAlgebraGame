import Game.Levels.MonoidWorld.L02_id_unique
import Game.Custom.MyMagma.Definition

World "MonoidWorld"
Level 3

Title "Magma with an identity element"

Introduction "In this level we will show that: given a magma (no associativity), equip with an identity element and
and an extra assumption. We can show that the magma is commutative.
"

namespace MyMonoid

variable {M : Type} [MyMagma M]

open MyMonoid

Statement monoid_magma_comm {a b e : M} (h₁ : ∀ x : M, e * x = x)
(h₂ : ∀ x y z : M, x * (y * z) = (x * z) * y) :
a * b = b * a := by
  nth_rewrite 1 [← h₁ a]
  nth_rewrite 2 [← h₁ b]
  rewrite [← h₂]
  rewrite [h₁, h₁]
  rfl


Conclusion "Well done. The next level will build on top of this one."

NewTheorem MyMonoid.monoid_magma_comm
