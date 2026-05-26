import Game.Levels.InverseSemigroupWorld.L01_inverses


World "InverseSemigroupWorld"
Level 2
Title "Idempotents"

Introduction "
Idempotents are particularly important in the theory of inverse semigroups.

In this level we'll prove that both $a * a⁻¹$ and $a⁻¹ * a$ are idempotent elements.
"

open MySemigroup
open MyInvSemigroup

variable {S : Type} [inst : MyInvSemigroup S]

/-- Let $S$ be an inverse semigroup. Then for all $a ∈ S$, $a * a⁻¹$ and $a⁻¹ * a$ are idempotent. -/
Statement (a : S) : Idempotent (a * a⁻¹) ∧ Idempotent (a⁻¹ * a) := by
  constructor
  · rewrite [Idempotent]
    rewrite [← mul_assoc]
    rewrite [mul_inv_mul]
    rfl
  · rewrite [Idempotent]
    rewrite [← mul_assoc]
    rewrite [inv_mul_inv]
    rfl

Conclusion "Good job!"
