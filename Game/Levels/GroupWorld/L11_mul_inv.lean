import Game.Levels.GroupWorld.L10_Hello


World "GroupWorld"
Level 11

Title "FINAL BOSS"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
Say the current goal is P and you have a proposition h : Q → P then apply h replaces the current goal
with Q as Q implies P.
-/
TacticDoc apply

/--
The iverse of a multiple is the multiple of the inverses reversed
-/
TheoremDoc mygroup.mul_inv as "mul_inv" in "Group"

Statement mul_inv {a b : G} : (a * b)⁻¹ = b⁻¹ * a⁻¹ := by
  apply eq_mul_inv_of_mul_eq
  apply eq_inv_of_mul_eq_one
  rw [mul_assoc]
  rw [← mul_left_inv (a * b)]







Conclusion "This last message appears if the level is solved."

NewTactic apply
