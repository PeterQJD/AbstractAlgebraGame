import Game.Levels.MonoidWorld.L01_Hello

World "MonoidWorld"
Level 2
Title "Hello World"

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"
namespace mymonoid

variable (M : Type) [MyStructure M] -- M for monoid seems fitting.
open MyStructure

/--
This result is to illustrate that if there is two elements of a monoid that have the identity property
, then those elements are equal, and hence the identity is unique.

### Please note:
Only the left and right aspect (h1 , h2) respectivley of  $e₁$ and $e₂$'s identityness is included (for simplicity)
as assumptions, because that is all that is required to prove that they are the equal.

-/
TheoremDoc mymonoid.id_unique as "id_unique" in "Monoid"

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
The message shown when the level is completed
"
NewTheorem mymonoid.id_unique
