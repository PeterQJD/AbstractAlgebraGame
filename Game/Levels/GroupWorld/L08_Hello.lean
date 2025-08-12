import Game.Levels.GroupWorld.L07_Hello


World "GroupWorld"
Level 8

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
TheoremDoc mygroup.eq_inv_of_mul_eq_one as "eq_inv_mul_eq_one" in "Group"

Statement eq_inv_of_mul_eq_one {a b : G} (h : a * b = 1) : a = b⁻¹ := by
  Hint (hidden := true) "Try generating a new hypothesis from [{h}] using 'have'."
  have h1 : a * b * b⁻¹ = 1 * b⁻¹ := by rw[h]
  rw [mul_assoc] at h1
  rw [mul_right_inv] at h1
  rw [mul_one, one_mul] at h1
  exact h1

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.eq_inv_of_mul_eq_one
