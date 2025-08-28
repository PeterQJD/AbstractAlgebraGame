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
This result states that if there is an element $e$ of a monoid, such that when $e$ is applied on the left
to any other element $a$ of the monoid -, then $e$ must be the identity element of the monoid.
Therefore this shows that the identity element is unique.
-/
TheoremDoc mymonoid.id_unique as "id_unique" in "Monoid"

/-- The exercise statement in natural language using latex: $\iff$. -/
Statement id_unique {e₁ e₂ a : M} (h1 : ∀ a, e₁ * a = a) (h2 : ∀ a, e₂ * a = a) : e₁ = e₂ := by
  sorry


Conclusion "
The message shown when the level is completed
"
NewTheorem mymonoid.id_unique
