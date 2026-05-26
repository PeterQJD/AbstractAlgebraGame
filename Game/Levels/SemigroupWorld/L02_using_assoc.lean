import Game.Levels.SemigroupWorld.L01_associatvity

World "SemigroupWorld"

Level 2

Title "Using Associativity"

Introduction "
The training wheels are now off; this is the first proper test.

Use `rewrite` and `nth_rewrite` with `mul_assoc` to close the goal.
"
open MySemigroup

variable {S : Type} [inst : MySemigroup S]

namespace MySemigroup

/--
Let $S$ be a semigroup. Then for all $a, b, c∈ S$, $(a * b * c) * (a * b * c) = a * (b * c * a * b) * c$.
-/
Statement sq_assoc (a b c: S) : (a * b * c) * (a * b * c) = a * (b * c * a * b) * c := by
  nth_rewrite 1 [mul_assoc a]
  nth_rewrite 1 [mul_assoc a]
  rewrite [← mul_assoc (b * c)]
  rewrite [← mul_assoc (b * c)]
  nth_rewrite 1 [← mul_assoc a]
  rfl

Conclusion "
Well done!
"

end MySemigroup

NewTheorem MySemigroup.sq_assoc
