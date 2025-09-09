import Game.Levels.GroupWorld.L06_Hello


World "GroupWorld"
Level 7

Title " Welcome to Group World - Getting to grips with the axioms"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure -- for easy access to axioms

/--
This result states that for elements $a, x, y ∈ G $, if a * x = a * y then x = y.
-/
TheoremDoc mygroup.mul_left_cancel as "mul_left_cancel" in "Group"


Statement mul_left_cancel (a x y : G) (h : a * x = a * y) : x = y := by
  rewrite [← one_mul x]
  rewrite [← mul_left_inv a]
  rewrite [mul_assoc]
  rewrite [h]
  rewrite [← mul_assoc]
  rewrite [mul_left_inv]
  rewrite [one_mul]
  rfl

Conclusion "This last message appears if the level is solved."

-- new theorem can only be used once per level but takes multiple arguments.
-- only temporary as axioms should be added to inventory in earlier worlds
NewTheorem mygroup.mul_left_cancel

end mygroup
