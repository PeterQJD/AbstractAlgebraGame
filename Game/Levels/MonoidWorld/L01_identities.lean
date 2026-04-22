import Game.Metadata
import Game.Custom.MyMonoid.Definition
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions

World "MonoidWorld"
Level 1
Title "The identity element"

Introduction "
The theorems `one_mul` and `mul_one` state that `∀ a ∈ M, 1 * a = a` and `∀ a ∈ M, a * 1 = a`. We
need both because we can't assume that the binary operation is commutative.

Use both to close the goal.
"
namespace MyMonoid

NewDefinition MyMonoid

NewTheorem MyMonoid.mul_one MyMonoid.one_mul MyMonoid.mul_assoc

variable {M : Type} -- M for monoid seems fitting.

open MyMonoid

/-- In a monoid $M$, $∀ a ∈ M, 1 * a * 1 = a$. -/
Statement [inst : MyMonoid M] (a : M) : 1 * a * 1 = a := by
  rewrite [one_mul]
  exact mul_one a

Conclusion "
Great, we now have access to both `one_mul` and `mul_one` in our inventory.
"
