import Game.Levels.RegularSemigroupWorld.L04_test4

World "RegularSemigroupWorld"
Level 5
Title "Title"

Introduction "
Intro
"

open MySemigroup
open MyRegSemigroup

variable {R : Type} [inst : MyInvSemigroup R]

/-- Plain text. -/
Statement (a b c : R) (h : b * a * c * a = b) : b = c * a * b * a * b := by
  sorry

Conclusion "Great!"
