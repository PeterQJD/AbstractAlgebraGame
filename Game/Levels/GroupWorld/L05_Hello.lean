import Game.Levels.GroupWorld.L04_Hello


World "GroupWorld"
Level 5

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
TheoremDoc mygroup.eq_mul_inv_of_mul_eq as "eq_mul_inv_of_mul_eq" in "Group"

Statement eq_mul_inv_of_mul_eq {a b c : G} (h : a * c = b) : a = b * c⁻¹ := by
  symm at h
  rewrite [h]
  rewrite [mul_assoc]
  rewrite [mul_right_inv]
  rewrite [mul_one]
  rfl

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.eq_mul_inv_of_mul_eq
