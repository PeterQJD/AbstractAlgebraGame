import Game.Levels.SemigroupWorld.L05_commutativity

World "SemigroupWorld"
Level 6
Title "Using commutativity"

Introduction "Use `mul_comm` and other tactics to close the goal."

namespace MySemigroup

open MySemigroup

variable {S : Type}

/--Let $S$ be a commutative semigroup. Then for all $a, b, c ∈ S$, $a * (b * c) = c * b * a$.-/
Statement (a b c: S) [inst : MySemigroup S] : (a * (b * c)) = c * b * a := by
  rewrite [mul_comm]
  Hint (hidden := true) "Try to target specific variables with `mul_comm`."
  rewrite [mul_comm b c]
  rfl

Conclusion "Well done!"

end MySemigroup
