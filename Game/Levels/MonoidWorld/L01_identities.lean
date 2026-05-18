import Game.Metadata
import Game.Custom.MyStructures.Definitions
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions

World "MonoidWorld"
Level 1
Title "The identity element"

Introduction "
The theorems `id_mul` and `mul_id` state that $∀ a ∈ M, e * a = a$ and $∀ a ∈ M, a * e = a$. We
need both because we can't assume that the binary operation is commutative.

Use `id_mul` and `mul_id` to close the goal.
"

open MyMonoid

NewDefinition MyMonoid

NewTheorem MyMonoid.e MyMonoid.id_mul MyMonoid.mul_id

variable {M : Type}

/-- In a monoid $M$, $∀ a ∈ M, e * a = a * e$. -/
Statement [inst : MyMonoid M] (a : M) : e * a = a * e := by
  rewrite [id_mul]
  rewrite [mul_id]
  rfl

Conclusion "
Great, we now have access to `id_mul` and `mul_id` in our inventory.

You may have already picked up on this, but notice that where `id` appears in the name of the theorems `id_mul` and `mul_id` matches where the identity element `e` appears in the corresponding statements.
"
