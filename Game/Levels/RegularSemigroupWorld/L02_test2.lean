import Game.Levels.RegularSemigroupWorld.L01_test1

World "RegularSemigroupWorld"
Level 2
Title "Idempotent 1"

Introduction "
Let $R$ be a regular semigroup and let $b ∈ R$ be inverses of $a ∈ R$. Then $b * a$ is an idempotent.
"

open MySemigroup
open MyRegSemigroup

variable {R : Type} [inst : MyRegSemigroup R]

/-- Plain text. -/
Statement (a b c : R) (h : IsInverse a b) : Idempotent (b * a) := by
  rewrite [Idempotent]
  rewrite [← mul_assoc]
  rewrite [IsInverse] at h
  rcases h
  rewrite [right]
  rfl

Conclusion "Great!"
