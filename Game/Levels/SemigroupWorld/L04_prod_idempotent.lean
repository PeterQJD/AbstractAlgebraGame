import Game.Levels.SemigroupWorld.L03_idempotent

World "SemigroupWorld"
Level 4
Title "Idempotent Products"

Introduction "
In this level, you'll prove that a product of two elements `a` and `b` is an idempotent if `a * b * a = a`.
"

variable {S : Type}

namespace MySemigroup

open MySemigroup

/--Let $S$ be a semigroup and let $a, b ∈ S$. If $a * b * a = a$, then $a * b$ is an idempotent.-/
Statement (a b: S) [inst : MySemigroup S] (h : a * b * a = a) : Idempotent (a * b):= by
  Hint (hidden := true) "Try 'rewrite [Idempotent]' to use the definition of an element being an idempotent."
  rewrite [Idempotent]
  rewrite [← mul_assoc]
  rewrite [h]
  rfl

Conclusion "Nice work!"

end MySemigroup
