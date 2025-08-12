import Game.Levels.GroupWorld.L08_Hello


World "GroupWorld"
Level 9

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyGroup G]
open MyGroup

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.inv_inv as "inv_inv" in "Group"

Statement inv_inv (a : G) : a ⁻¹ ⁻¹ = a := by
  rw [← one_mul a⁻¹⁻¹]
  rw [← mul_right_inv a]
  rw [mul_assoc]
  rw [mul_right_inv]
  rw [mul_one]

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.inv_inv
