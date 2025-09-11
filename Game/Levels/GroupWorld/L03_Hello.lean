import Game.Levels.GroupWorld.L02_Hello


World "GroupWorld"
Level 3

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
  symm
  rewrite [← mul_right_inv b]
  symm at h
  nth_rewrite 1 [h]
  rewrite [mul_assoc]
  rewrite [mul_right_inv]
  rewrite [mul_one]
  rfl

Conclusion "This last message appears if the level is solved."

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.mul_left_eq_self
