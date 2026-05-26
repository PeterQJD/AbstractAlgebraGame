import Game.Levels.GroupWorld.L06_left_inverse

World "GroupWorld"
Level 7

Title "Right Inverse"

Introduction "
In this level you'll prove the *right* version of the result introduced in the previous level.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [int : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group and let $a, b ∈ G$. If $a * b = e$ then $b = a⁻¹$.
-/
Statement inv_eq_of_mul_eq_id {a b : G} (h : a * b = e) : b = a⁻¹ := by
  rewrite [← id_mul b]
  rewrite [← inv_mul a]
  rewrite [mul_assoc]
  rewrite [h]
  rewrite [mul_id]
  rfl

Conclusion "Good work!"

end MyGroup

NewTheorem MyGroup.inv_eq_of_mul_eq_id
