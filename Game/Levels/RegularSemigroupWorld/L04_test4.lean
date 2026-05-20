import Game.Levels.RegularSemigroupWorld.L03_test3

World "RegularSemigroupWorld"
Level 4
Title "Title"

Introduction "
Intro
"

open MySemigroup
open MyRegSemigroup

variable {R : Type} [inst : MyRegSemigroup R]

/-- Plain text. -/
Statement idem2 (a b c : R) (h1 : IsInverse a b) (h2 : IsInverse a c) : b = b * a * c * a * b := by
  rewrite [IsInverse] at h1
  rewrite [IsInverse] at h2
  nth_rewrite 1 [← h1.right]
  nth_rewrite 1 [← h2.left]
  rewrite [← mul_assoc]
  rewrite [← mul_assoc]
  rfl

Conclusion "Great!"
