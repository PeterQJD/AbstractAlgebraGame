import Game.Levels.GroupWorld.L03_inv_inv


World "GroupWorld"
Level 4

Title "Identity Implication"

Introduction "
In this level you will prove that $a * b = b$ implies $a = 1$. To do this you will use all of the group
axioms. If you need any help you can press the Help button at the bottom left.
"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
Shows that given a group $G$ and $a, b ∈ G$ then if $a * b = b$ then $a = 1$ where $1$ is the
identity in $G$
-/
TheoremDoc mygroup.mul_left_eq_self as "mul_left_eq_self" in "Group"

Statement mul_left_eq_self {a b : G}  (h : a * b = b):  a = 1 := by
  symm
  Hint (hidden := true) "using rewrite in the other direction could be of use"
  rewrite [← mul_right_inv b]
  symm at h
  nth_rewrite 1 [h]
  Hint (hidden := true) "remember the group axioms"
  rewrite [mul_assoc]
  rewrite [mul_right_inv]
  rewrite [mul_one]
  rfl

Conclusion "Well done!"

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.mul_left_eq_self
