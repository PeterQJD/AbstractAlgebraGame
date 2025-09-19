import Game.Levels.GroupWorld.L04_mul_left_eq_self


World "GroupWorld"
Level 5

Title "Multiply on Right"

Introduction "Now in this level you will show that given $a * c = b$ you know
$a = b * c^{-1}. This level isn't particularly long so take your time.$
"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--

-/
TheoremDoc mygroup.eq_mul_inv_of_mul_eq as "eq_mul_inv_of_mul_eq" in "Group"

Statement eq_mul_inv_of_mul_eq {a b c : G} (h : a * c = b) : a = b * c⁻¹ := by
  symm at h
  Hint (hidden := true) "Your assumption could prove useful here."
  rewrite [h]
  Hint (hidden := true) "Remember your group axioms."
  rewrite [mul_assoc]
  rewrite [mul_right_inv]
  rewrite [mul_one]
  rfl

Conclusion "Well done!"

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.eq_mul_inv_of_mul_eq
