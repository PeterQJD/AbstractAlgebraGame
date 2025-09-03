import Game.Levels.GroupWorld.L05_Hello


World "GroupWorld"
Level 6

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.mul_left_eq_self as "mul_left_eq_self" in "Group"

Statement mul_left_eq_self {a b : G}  (h : a * b = b):  a = 1 := by
  have h1 : a * b * b⁻¹ = b * b⁻¹ := by rw[h]
  rw [mul_assoc] at h1
  rw [mul_right_inv] at h1
  rw [mul_one] at h1
  exact h1

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.mul_left_eq_self
