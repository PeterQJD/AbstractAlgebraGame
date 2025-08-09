import Game.Levels.GroupWorld.L08_Hello


World "GroupWorld"
Level 9

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variables {G : Type} [MyGroup G]
open MyGroup

Statement eq_inv_of_mul_eq_one {a b : G} (h : a * b = 1) : a = b⁻¹ := by
  have h1 : a * b * b⁻¹ = 1 * b⁻¹ := by rw[h]
  rw [mul_assoc] at h1
  rw [mul_right_inv] at h1
  rw [mul_one, one_mul] at h1
  exact h1

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic mul_left_eq_self
-- NewTheorem mul_left_eq_self
-- NewDefinition mul_left_eq_self
