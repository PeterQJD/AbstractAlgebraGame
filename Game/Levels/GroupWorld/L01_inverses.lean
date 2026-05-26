import Game.Metadata
import Game.Custom.MyStructures.Definitions
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions

World "GroupWorld"
Level 1

Title "Group Inverses"

Introduction "It's more common to think of a group as bulding on a monoid structure and that's the approach we'll take in this level.

This means that we already have the `mul_assoc`, `mul_id` and `id_mul` axioms.

The axioms for inverses are `mul_inv` and `inv_mul`. They state that, for all $a ∈ G$, $a * a⁻¹ = e$ and $a⁻¹ * a = e$, where $e$ is the (unique) identity element.

The goal of this level is to use these axioms to prove a simple identity and to add them to our inventory.
"

open MySemigroup
open MyMonoid
open MyGroup

NewDefinition MyGroup

NewTheorem MyGroup.mul_inv MyGroup.inv_mul

variable {G : Type} [inst : MyGroup G]

/--Let $G$ be a group. Then, for all $a ∈ G$, $a * a * a⁻¹ = a⁻¹ * a * a$.-/
Statement  (a : G) : a * a * a⁻¹ = a⁻¹ * a * a := by
  rewrite [mul_assoc]
  rewrite [mul_inv]
  rewrite [mul_id]
  rewrite [inv_mul]
  rewrite [id_mul]
  rfl

Conclusion "Good work!"
