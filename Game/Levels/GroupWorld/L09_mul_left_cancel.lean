import Game.Levels.GroupWorld.L08_product_inv


World "GroupWorld"
Level 9

Title "Left Cancel"

Introduction "As the name of the level implies, your task is to show for $a,x,y ∈ G$. If $a * x = a * y$,
 then $x = y$.
"

namespace MyGroup

variable {G : Type} [MyGroup G]
open MyGroup

Statement mul_left_cancel (a x y : G) (h : a * x = a * y) : x = y := by
  rewrite [← one_mul x]
  Hint (hidden := true) "A previous result could be of use here."
  rewrite [← mul_left_inv a]
  rewrite [mul_assoc]
  rewrite [h]
  rewrite [← mul_assoc]
  rewrite [mul_left_inv]
  rewrite [one_mul]
  rfl

Conclusion "Well done! Now lets see what we can prove with our new result."

NewTheorem MyGroup.mul_left_cancel
