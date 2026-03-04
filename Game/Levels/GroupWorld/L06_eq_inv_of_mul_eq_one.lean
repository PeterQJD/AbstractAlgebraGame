import Game.Levels.GroupWorld.L05_eq_mul_inv_of_mul_eq


World "GroupWorld"
Level 6

Title "Product is Identity 1"

Introduction "Another result that will be required is that if you have a group $G$
and $a, b ∈ G$ with $a * b = 1$ then $a$ must be the inverse of $b$
"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.eq_inv_of_mul_eq_one as "eq_inv_mul_eq_one" in "Group"

Statement eq_inv_of_mul_eq_one {a b : G} (h : a * b = 1) : a = b⁻¹ := by
  rewrite [← mul_one a]
  rewrite [← mul_right_inv b]
  rewrite [← mul_assoc]
  rewrite [h]
  rewrite [one_mul]
  rfl

Conclusion "Well done!"

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.eq_inv_of_mul_eq_one
