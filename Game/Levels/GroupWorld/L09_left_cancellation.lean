import Game.Levels.GroupWorld.L08_product_inv


World "GroupWorld"
Level 9

Title "Left Cancellation"

Introduction "
In this level we will show that if $a * b = a * c$ for group elements $a, b, c$ then we can cancel $a$ from both sides of the equation.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [inst : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group and let $a, b, c ∈ G$. If $a * b = a * c$ then $b = c$.
-/
Statement mul_left_cancel (a b c : G) (h : a * b = a * c) : b = c := by
  rewrite [← id_mul b]
  rewrite [← inv_mul a]
  rewrite [mul_assoc]
  rewrite [h]
  rewrite [← mul_assoc]
  rewrite [inv_mul]
  rewrite [id_mul]
  rfl

Conclusion "Well done! Now lets see what we can prove with our new result."

end MyGroup

NewTheorem MyGroup.mul_left_cancel
