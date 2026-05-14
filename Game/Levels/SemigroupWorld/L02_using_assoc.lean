import Game.Levels.SemigroupWorld.L01_associatvity

World "SemigroupWorld"
Level 2
Title "Using associativity"

Introduction "
The training wheels are now off; we have our first proper level.

Use `mul_assoc` and other tactics to close the goal.
"
open MySemigroup

variable {S : Type}

/--Let $S$ be a semigroup. Then for all $a, b, c, d ∈ S$, $(a * (b * c)) * d = (a * b) * (c * d)$.-/
Statement (a b c d : S) [inst : MySemigroup S] : (a * (b * c)) * d = (a * b ) * (c * d):= by
  rewrite [mul_assoc]
  symm
  rewrite [mul_assoc]
  rewrite [← mul_assoc b]
  rfl

Conclusion "Very well done!"
