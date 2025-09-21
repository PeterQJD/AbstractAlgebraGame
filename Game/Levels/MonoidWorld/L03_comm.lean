import Game.Levels.MonoidWorld.L02_id_unique


World "MonoidWorld"
Level 3

Title "Commutative Monoid 1"

Introduction "In this level we will show that given the set of assumptions presented in the statement
we can show that the magma is commutative.
"

namespace mymonoid

variable {M : Type} [MyMagma M]

/--
The iverse of a multiple is the multiple of the inverses reversed
-/
TheoremDoc mymonoid.monoid_magma_comm as "monoid_magma_comm" in "Monoid"

Statement monoid_magma_comm {a b e : M} (h₁ : ∀ x : M, e * x = x)
(h₂ : ∀ x y z : M, x * (y * z) = (x * z) * y) :
a * b = b * a := by
  nth_rewrite 1 [← h₁ a]
  nth_rewrite 2 [← h₁ b]
  rewrite [← h₂]
  rewrite [h₁, h₁]
  rfl


Conclusion "Well done. The next level will build on top of this one."
