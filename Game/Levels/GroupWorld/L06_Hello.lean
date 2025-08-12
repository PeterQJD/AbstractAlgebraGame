import Game.Levels.GroupWorld.L05_Hello


World "GroupWorld"
Level 6

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
TheoremDoc mygroup.eq_mul_inv_of_mul_eq as "eq_mul_inv_of_mul_eq" in "Mul"

Statement eq_mul_inv_of_mul_eq {a b c : G} (h : a * c = b) : a = b * c⁻¹ := by
  have h1 : (a * c) * c⁻¹ = b * c⁻¹ := by rw[h]
  rw [mul_assoc] at h1
  rw [mul_right_inv] at h1
  rw [mul_one] at h1
  exact h1

Conclusion "This last message appears if the level is solved."
