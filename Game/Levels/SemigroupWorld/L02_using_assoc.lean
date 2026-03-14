import Game.Levels.SemigroupWorld.L01_associatvity

World "SemigroupWorld"
Level 2
Title "Using associativity"

Introduction "
The training wheels are now off; we have our first proper level.

Use `mul_assoc` and other tactics to close the goal.
"

namespace MySemigroup

open MySemigroup

variable {S : Type}

/--Let $S$ be a semigroup. Then for all $a, b, c, d ∈ S$, $(a * (b * c)) * d = (a * b) * (c * d)$.-/
Statement (a b c d : S) [inst : MySemigroup S] : (a * (b * c)) * d = (a * b ) * (c * d):= by
  rewrite [mul_assoc]
  Branch
    symm
    rewrite [mul_assoc]
    Hint (hidden := true) "If you want to be precise with where you want to apply `mul_assoc`, specify the variable after the statement, e.g., for the variable `x` we'd write `rewrite [mul_assoc x]`."
    rewrite [← mul_assoc b]
    rfl
  Hint (hidden := true) "If you want to be precise with where you want to apply `mul_assoc`, specify the variable after the statement, e.g., for the variable `x` we'd write `rewrite [mul_assoc x]`."
  rewrite [mul_assoc b]
  rewrite [← mul_assoc a]
  rfl

Conclusion "Very well done!"

end MySemigroup
