import Game.Levels.MonoidWorld.L01_identities

World "MonoidWorld"
Level 2
Title "Proving the identity element is unique"

Introduction "
Now we are going to prove that the identity element of the monoid is unique.

To do so we will prove that, given two identity elements e₁ , e₂, with their relevant properties listed as assumptions.
We show that e₁ must be equal to e₂.

Only the left and right aspect (h1 , h2) respectivley of  e₁ and e₂'s identityness is included (for simplicity)
as assumptions, because that is all that is required to prove that they are the equal.
"
namespace MyMonoid

variable (M : Type) [MyMonoid M] -- M for monoid seems fitting.

open MyMonoid

/-- The exercise statement in natural language using latex: $\iff$. -/
Statement id_unique {e₁ e₂ : M}
(h1 : ∀ a, e₁ * a = a)
(h2 : ∀ a, a * e₂ = a) :
 e₁ = e₂ := by
   specialize h1 e₂
   symm at h1
   rewrite [h1]
   specialize h2 e₁
   rewrite [h2]
   rfl

Conclusion "
Great stuff, you can sleep easy knowing that there is only one identity element in a monoid!
"
NewTheorem MyMonoid.id_unique
