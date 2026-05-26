import Game.Levels.SemigroupWorld
import Game.Levels.InverseSemigroupWorld.L02_idempotents

World "InverseSemigroupWorld"

Level 3

Title "Inverse Product Idempotent"

Introduction "
If $x = (a * b)⁻¹$ then $b * x * a$ is an idempotent.

A theorem introduced in Semigroup World can be used to shorten your proof.
"

open MySemigroup
open MyInvSemigroup

variable {S : Type} [inst : MyInvSemigroup S]

namespace MyInvSemigroup

/--
Let $S$ be an inverse semigroup and let $a, b ∈ S$. Let $x = (a * b)⁻¹$. Then $b * x * a$ is an idempotent.
-/
Statement inv_prod_idempotent (a b x : S) (h : x = (a * b)⁻¹) : Idempotent (b * x * a) := by
  rewrite [Idempotent]
  rewrite [sq_assoc]
  rewrite [mul_assoc x]
  rewrite [h]
  rewrite [inv_mul_inv]
  rfl

Conclusion "
Good job!
"

end MyInvSemigroup

NewTheorem MyInvSemigroup.inv_prod_idempotent
