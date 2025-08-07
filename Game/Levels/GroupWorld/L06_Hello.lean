import Game.Metadata
import Game.CustomStructure.MyGroup


World "GroupWorld"
Level 1

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variables {G : Type} [MyGroup G]
open MyGroup

Statement eq_mul_inv_of_mul_eq {a b c : G} (h : a * c = b) : a = b * c⁻¹ := by
  have h1 : (a * c) * c⁻¹ = b * c⁻¹ := by rw[h]
  rw [mul_assoc] at h1
  rw [mul_right_inv] at h1
  rw [mul_one] at h1
  exact h1

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic eq_mul_inv_of_mul_eq
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
