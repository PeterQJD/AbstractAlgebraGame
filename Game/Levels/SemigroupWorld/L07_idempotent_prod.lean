import Game.Levels.SemigroupWorld.L06_using_comm

World "SemigroupWorld"
Level 7
Title "Products of Idempotents"

Introduction "
In this, the final level of Semigroup World, you'll prove that in a commutative semigroup the product of two idempotents is an idempotent.
"

variable {S : Type}

namespace MySemigroup

open MySemigroup

/--Let $S$ be a commutative semigroup and let $a, b ∈ S$. If $a$ and $b$ are idempotents then so is $a * b$.-/
Statement (a b : S) [inst : MySemigroup S] (ha : Idempotent a) (hb : Idempotent b) : Idempotent (a * b) := by
  rewrite [Idempotent]
  rewrite [← mul_assoc]
  rewrite [mul_assoc a b a]
  rewrite [mul_comm b a]
  rewrite [← mul_assoc a a b]
  rewrite [ha]
  rewrite [mul_assoc]
  rewrite [hb]
  rfl

Conclusion "Well done! You've conquered Semigroup World!"

end MySemigroup
