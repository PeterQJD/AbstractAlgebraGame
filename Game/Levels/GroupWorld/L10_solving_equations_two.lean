import Game.Levels.GroupWorld.L09_left_cancellation

World "GroupWorld"
Level 10

Title "
Solving Equations 2"

Introduction "
In this level we will show that $x = b * a⁻¹$ is the unique solution of the equation $x * a = b$.

There is an obvious route to closing the goal, but an alternative approach is to use the theorem introduced in the previous level.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [inst : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group and let $a, b, x ∈ G$. If $x = b * a⁻¹$ then $a * x = b$.
-/
Statement mul_eq_of_eq_inv_mul (a b x : G) (h : x = b * a⁻¹) : x * a = b := by
  apply mul_left_cancel x⁻¹
  nth_rewrite 2 [h]
  rewrite [mul_assoc b]
  rewrite [inv_mul]
  rewrite [mul_id]
  rfl

Conclusion "Well done!"

NewTheorem MyGroup.mul_left_cancel
