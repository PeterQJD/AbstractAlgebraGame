import Game.Levels.GroupWorld.L10_Hello


World "GroupWorld"
Level 11

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variables {G : Type} [MyGroup G]
open MyGroup

Statement inv_eq_of_mul_eq_one {a b : G} (h : a * b = 1) : a⁻¹ = b := by
  have h1 : a⁻¹ * (a * b) = a⁻¹ * 1 := by rw[h]
  rw [← mul_assoc] at h1
  rw [mul_left_inv] at h1
  rw [one_mul, mul_one] at h1
  symm at h1
  exact h1

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic mul_left_eq_self
-- NewTheorem mul_left_eq_self
-- NewDefinition mul_left_eq_self
