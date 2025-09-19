import Game.Levels.GroupWorld.L08_product_inv


World "GroupWorld"
Level 9

Title "Left Cancel"

Introduction "As the name of the level implies you will hve to show that given
$a * x = a * y$ implies $x = y$.
"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure -- for easy access to axioms

/--
This result states that for elements $a, x, y ∈ G $, if a * x = a * y then x = y.
-/
TheoremDoc mygroup.mul_left_cancel as "mul_left_cancel" in "Group"


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

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.mul_left_cancel

end mygroup
