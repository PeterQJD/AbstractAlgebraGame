import Game.Levels.MonoidWorld.L03_comm


World "MonoidWorld"
Level 4

Title "Commutative Monoid 2"

Introduction "Following on from the last level we will show that with these assumptions we can
show that the magma is also associative. So the magma on top of being a set equipped with a binary
operation has under our assumptions an identity element and is associative as well as commutative.
So it is also an commutative monoid.
"

namespace mymonoid

variable {M : Type} [MyMagma M]

/--
The iverse of a multiple is the multiple of the inverses reversed
-/
TheoremDoc mymonoid.monoid_magma_assoc as "monoid_magma_assoc" in "Monoid"

Statement monoid_magma_assoc {a b c e : M} (h₁ : ∀ x : M, e * x = x)
(h₂ : ∀ (x y z : M), x * (y * z) = (x * z) * y) :
(a * b) * c = a * (b * c) := by
  Hint (hidden := true) "A previous theorem could prove useful"
  nth_rewrite 4 [monoid_magma_comm h₁ h₂]
  symm
  exact h₂ a c b


Conclusion "Congradulations on completing this level as well as Monoid World"

NewTheorem mymonoid.monoid_magma_comm
