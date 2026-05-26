import Game.Levels.SemigroupWorld.L05_commutativity

World "SemigroupWorld"

Level 6

Title "Using Commutativity"

Introduction "
Use `mul_comm` and other tactics to close the goal.
"

open MyCommSemigroup

variable {S : Type} [inst : MyCommSemigroup S]

/--
Let $S$ be a commutative semigroup. Then for all $a, b, c ∈ S$, $a * (b * c) = c * b * a$.
-/
Statement (a b c: S) : (a * (b * c)) = c * b * a := by
  rewrite [mul_comm]
  rewrite [mul_comm b c]
  rfl

Conclusion "Well done!"
