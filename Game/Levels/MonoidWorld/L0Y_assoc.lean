import Game.Levels.MonoidWorld.L03_comm

World "MonoidWorld"
Level 4

Title "Monoid from a magma"

Introduction "Following on from the last level, we will show that this particular magma is also associative.
So the magma, on top of being a set equipped with a binary operation.
 Has under our assumptions an identity element, if we can show associativity as well as commutativty.
Then our magma is a monoid, specifically a commutative monoid.
"

namespace MyMonoid

variable {M : Type} [MyMagma M]

open MyMonoid

Statement monoid_magma_assoc {a b c e : M} (h₁ : ∀ x : M, e * x = x)
(h₂ : ∀ (x y z : M), x * (y * z) = (x * z) * y) :
(a * b) * c = a * (b * c) := by
  Hint (hidden := true) "A previous theorem could prove useful"
  nth_rewrite 4 [monoid_magma_comm h₁ h₂]
  symm
  exact h₂ a c b

Conclusion "This marks the end of monoid world! you can now venture onwards to group world."

NewTheorem MyMonoid.monoid_magma_assoc
