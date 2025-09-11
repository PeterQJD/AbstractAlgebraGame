import Game.Levels.GroupWorld.L05_Hello


World "GroupWorld"
Level 6

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

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

Conclusion "This last message appears if the level is solved."

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.eq_inv_of_mul_eq_one
