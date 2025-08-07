import Game.Levels.GroupWorld.L02_Hello


World "GroupWorld"
Level 3

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variables {G : Type} [MyGroup G]
open MyGroup


Statement mul_right_inv (a : G) : a * a⁻¹ = 1 := by
  nth_rewrite 1 [← one_mul a]
  nth_rewrite 1 [←mul_left_inv a⁻¹]
  rw [mul_assoc (a⁻¹⁻¹) a⁻¹ a]
  rw [mul_left_inv a]
  rw [mul_assoc]
  rw [one_mul]
  rw [mul_left_inv]

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic mul_right_inv
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
