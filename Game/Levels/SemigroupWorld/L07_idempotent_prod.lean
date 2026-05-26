import Game.Levels.SemigroupWorld.L06_using_comm

World "SemigroupWorld"

Level 7

Title "Products of Idempotents"

Introduction "
In this, the final level of Semigroup World, you'll prove that in a commutative semigroup the product of two idempotents is an idempotent.
"

open MySemigroup
open MyCommSemigroup

variable {S : Type} [inst : MyCommSemigroup S]

/--Let $S$ be a commutative semigroup and let $a, b ∈ S$. If $a$ and $b$ are idempotents then so is $a * b$.-/
Statement (a b : S) (ha : Idempotent a) (hb : Idempotent b) : Idempotent (a * b) := by
  rewrite [Idempotent]
  rewrite [← mul_assoc]
  rewrite [mul_assoc a b a]
  rewrite [mul_comm b a]
  rewrite [← mul_assoc a a b]
  rewrite [ha]
  rewrite [mul_assoc]
  rewrite [hb]
  rfl

Conclusion "
Well done! You've conquered Semigroup World.

Semigroups can be given additional structure in one two ways: by adding an identity element, which gives us a monoid, or by introducing inverses, which leads to inverse semigroups.

We recommend that you move on to Monoid World next and then try the levels of Inverse Semigroup World.
"
