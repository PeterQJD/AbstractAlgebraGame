import Game.Levels.GroupWorld.L04_left_identity


World "GroupWorld"
Level 5

Title "
Solving Equations 1
"

Introduction "
A group provides enough structure for us to solve simple equations of the form $x * a = b$.

We'll use all the group axioms to show that $x = b * a⁻¹$.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [inst : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group and let $a, b, x ∈ G$. If $x * a = b$ then $x = b⁻¹ * a$.
-/
Statement eq_mul_inv_of_mul_eq {a b x : G} (h : x * a = b) : x = b * a⁻¹ := by
  rewrite [← h]
  rewrite [mul_assoc]
  rewrite [mul_inv]
  rewrite [mul_id]
  rfl

Conclusion "Well done!"

NewTheorem MyGroup.eq_mul_inv_of_mul_eq
