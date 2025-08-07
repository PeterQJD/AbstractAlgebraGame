import Game.Levels.GroupWorld.L07_Hello


World "GroupWorld"
Level 8

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variables {G : Type} [MyGroup G]
open MyGroup

Statement mul_left_eq_self {a b : G} : a * b = b ↔ a = 1 := by
  constructor
  -- proving forward implication
  intro h
  have h1 : a * b * b⁻¹ = b * b⁻¹ := by rw[h]
  rw [mul_assoc] at h1
  rw [mul_right_inv] at h1
  rw [mul_one] at h1
  exact h1
  -- proving backward implication
  intro h2
  rw [h2]
  rw [one_mul]

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic mul_left_eq_self
-- NewTheorem mul_left_eq_self
-- NewDefinition mul_left_eq_self
