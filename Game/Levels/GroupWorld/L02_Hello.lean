import Game.Levels.GroupWorld.L01_Hello


World "GroupWorld"
Level 2

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
TheoremDoc mygroup.mul_eq_of_eq_inv_mul as "mul_eq_of_eq_inv_mul" in "Group"

Statement mul_eq_of_eq_inv_mul {a x y : G} (h : x = a⁻¹ * y) : a * x = y := by
  rw [← one_mul x] at h
  rw [← mul_left_inv a] at h
  rw [mul_assoc] at h
  Hint (hidden := true) "A previously proved theorem might be useful here"
  exact mul_left_cancel a⁻¹ (a * x) y h

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.mul_eq_of_eq_inv_mul
