import Game.Levels.GroupWorld.L07_Hello


World "GroupWorld"
Level 8

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
TheoremDoc mygroup.inv_eq_of_mul_eq_one as "inv_eq_of_mul_eq_one" in "Group"

Statement inv_eq_of_mul_eq_one {a b : G} (h : a * b = 1) : a⁻¹ = b := by
  symm
  rewrite [← one_mul b]
  rewrite [← mul_left_inv a]
  rewrite [mul_assoc]
  rewrite [h]
  rewrite [mul_one]
  rfl

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.inv_eq_of_mul_eq_one
