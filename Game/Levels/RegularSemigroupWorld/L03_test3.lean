import Game.Levels.RegularSemigroupWorld.L02_test2

World "RegularSemigroupWorld"
Level 3
Title "Idempotent 2"

Introduction "
Let $R$ be a regular semigroup and let $c ∈ R$ be inverses of $a ∈ R$. Then $a * c$ is an idempotent.
"

open MySemigroup
open MyRegSemigroup

variable {R : Type} [inst : MyRegSemigroup R]

/-- Plain text. -/
Statement idemp1 (a c : R) (h : IsInverse a c) : Idempotent (a * c) := by
  rewrite [Idempotent]
  rewrite [← mul_assoc]
  rewrite [IsInverse] at h
  rcases h
  rewrite [left]
  rfl

Conclusion "Great!"
