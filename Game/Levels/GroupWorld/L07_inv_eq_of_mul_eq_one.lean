import Game.Levels.GroupWorld.L06_eq_inv_of_mul_eq_one


World "GroupWorld"
Level 7

Title "Product is Identity 2"

Introduction "Carrying on from the previous level you will need to show
that if you have a group $G$ and $a, b ∈ G$ with $a * b = 1$ then $a^{-1}$
must be equal to $b$"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.inv_eq_of_mul_eq_one as "inv_eq_of_mul_eq_one" in "Group"

Statement inv_eq_of_mul_eq_one {a b : G} (h : a * b = 1) : a⁻¹ = b := by
  symm
  rewrite [← one_mul b]
  Hint (hidden := true) "A previous result could prove useful here."
  Hint (hidden := true) "remember you can rewrite an equation to the left as well"
  rewrite [← mul_left_inv a]
  rewrite [mul_assoc]
  rewrite [h]
  rewrite [mul_one]
  rfl

Conclusion "Well done!"

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.inv_eq_of_mul_eq_one
