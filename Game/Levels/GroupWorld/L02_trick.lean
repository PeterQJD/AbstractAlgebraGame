import Game.Levels.GroupWorld.L01_inverses

World "GroupWorld"

Level 2

Title "
A useful trick.
"

Introduction "
A simple, yet useful trick, is to use `rewrite [← ]` with `mul_id` and `mul_inv` (or their companion axioms) to introduce the identity element $e$ and to replace $e$ with the product $a * a*⁻¹$ or $a⁻¹ * a$ for some group element $a$.

Try both approaches to close the goal of this level. Remember that you will need to specify the variable on which you wish to apply `rewrite [← mul_id]` or `rewrite [← mul_inv]`.

You can also you this trick with `nth_rewrite`.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [inst : MyGroup G]

/--
Let $G$ be a group and let $a, b ∈ G$. Then $a * e * a = a * b * b⁻¹$.
-/
Statement  (a b : G) : a * a = a * b * b⁻¹ * a := by
  nth_rewrite 1 [← mul_id a]
  rewrite [← mul_inv b]
  rewrite [← mul_assoc]
  rfl

Conclusion "
Very good! These tricks will come in handy in the next level.
"
