import Game.Levels.GroupWorld.L02_Hello


World "GroupWorld"
Level 3

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
TheoremDoc mygroup.mul_right_inv as "mul_right_inv" in "Group"

Statement mul_right_inv (a : G) : a * a⁻¹ = 1 := by
  Hint "using 'nth_rewrite' can allow for precision rewriting"
  nth_rewrite 1 [← one_mul a]
  nth_rewrite 1 [←mul_left_inv a⁻¹]
  rw [mul_assoc (a⁻¹⁻¹) a⁻¹ a]
  rw [mul_left_inv a]
  rw [mul_assoc]
  rw [one_mul]
  rw [mul_left_inv]

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.mul_eq_of_eq_inv_mul
