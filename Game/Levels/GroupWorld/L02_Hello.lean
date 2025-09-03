import Game.Levels.GroupWorld.L01_Hello


World "GroupWorld"
Level 2

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
TheoremDoc mygroup.mul_one as "mul_one" in "Group"

Statement mul_one (a : G) : a * 1 = a := by
  rewrite [← mul_left_inv a]
  rewrite [← mul_assoc]
  rewrite [mul_right_inv]
  rewrite [one_mul]
  rfl

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTheorem mygroup.mul_one
