import Game.Levels.GroupWorld.L09_Hello


World "GroupWorld"
Level 10

Title " Welcome to Group World - Getting to grips with the axioms"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure -- for easy access to axioms

/--
This result states that for elements $a, x, y ∈ G $, if a * x = a * y then x = y.
-/
TheoremDoc mygroup.mul_left_cancel as "mul_left_cancel" in "Group"


Statement mul_left_cancel (a x y : G) (h : a * x = a * y) : x = y := by
  Hint "You can prove this using all 3 Group Axioms!"
  have h1 : a⁻¹ * (a * x) = a⁻¹ * (a * y) := by rw [h]
  rw [← mul_assoc] at h1
  rw [mul_left_inv] at h1
  rw [one_mul] at h1
  rw [← mul_assoc,mul_left_inv, one_mul] at h1
  exact h1


Conclusion "This last message appears if the level is solved."

-- new theorem can only be used once per level but takes multiple arguments.
-- only temporary as axioms should be added to inventory in earlier worlds
NewTheorem mygroup.mul_left_cancel

end mygroup
