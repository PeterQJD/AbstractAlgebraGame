import Game.Levels.GroupWorld.L09_Hello


World "GroupWorld"
Level 10

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variables {G : Type} [MyGroup G]
open MyGroup

Statement inv_inv (a : G) : a ⁻¹ ⁻¹ = a := by
  rw [← one_mul a⁻¹⁻¹]
  rw [← mul_right_inv a]
  rw [mul_assoc]
  rw [mul_right_inv]
  rw [mul_one]

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic mul_left_eq_self
-- NewTheorem mul_left_eq_self
-- NewDefinition mul_left_eq_self
