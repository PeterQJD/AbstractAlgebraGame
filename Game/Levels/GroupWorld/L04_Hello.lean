import Game.Levels.GroupWorld.L03_Hello


World "GroupWorld"
Level 4

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyGroup G]
open MyGroup

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.mul_one as "mul_one" in "Identity"

Statement mul_one (a : G) : a * 1 = a := by
  rw [← mul_left_inv a]
  rw [← mul_assoc]
  rw [mul_right_inv]
  rw [one_mul]

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic mul_one
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
