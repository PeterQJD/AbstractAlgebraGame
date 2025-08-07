import Game.Metadata

World "GroupWorld"
Level 1

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable (G : Type) [Group G]

Statement mul_left_cancel (a x y : G) (h : a * x = a * y) : x = y := by
  have h1 : a⁻¹ * (a * x) = a⁻¹ * (a * y) := by rw [h]
  rw [← mul_assoc] at h1
  rw [mul_left_inv, one_mul] at h1
  symm at h1
  rw [← mul_assoc,mul_left_inv, one_mul] at h1
  symm at h1
  exact h1

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic mul_left_cancel
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
end mygroup
