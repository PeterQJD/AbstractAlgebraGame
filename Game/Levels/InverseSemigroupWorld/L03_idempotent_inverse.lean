import Game.Levels.SemigroupWorld
import Game.Levels.InverseSemigroupWorld.L02_idempotents

World "InverseSemigroupWorld"
Level 3
Title "Idempotents and inverses"

Introduction "
Over the course of the next few levels we're going to show that in any inverse semigroup, idempotents commute.

To do this, we'll prove a series of helper theorems, the first of which is detailed in this level.

A theorem introduced back in SemigroupWorld will help.
"

open MySemigroup
open MyInvSemigroup

variable {S : Type} [inst : MyInvSemigroup S]

namespace MyInvSemigroup

/-- Let $S$ be an inverse semigroup and let $i, j ∈ S$. Let $x = (i * j)⁻¹$. Then $j * x *i$ is an idempotent. -/
Statement inv_prod_idempotent (i j x : S) (h : x = (i * j)⁻¹) : Idempotent (j * x * i) := by
  rewrite [Idempotent]
  rewrite [sq_assoc]
  rewrite [mul_assoc x]
  rewrite [h]
  rewrite [inv_mul_inv]
  rfl

Conclusion "Good job!"

end MyInvSemigroup

NewTheorem MyInvSemigroup.inv_prod_idempotent
