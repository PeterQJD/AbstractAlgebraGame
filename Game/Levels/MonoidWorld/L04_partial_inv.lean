import Game.Levels.MonoidWorld.L03_id_unique

World "MonoidWorld"

Level 4

Title "Partial inverses"

Introduction "
You will need to use `mul_assoc` at least once in your proof.
"

open MySemigroup
open MyMonoid

variable {M : Type} [inst : MyMonoid M]

/--
Let $a$ be an element of a monoid $M$. If there exist elements $b, c ∈ M$ such that $a * b = e$ and $c * a = e$ then $b = c$.
-/
Statement (a b c : M) (h1 : a * b = e) (h2 : c * a = e) : b = c := by
  rewrite [← id_mul b]
  rewrite [← h2]
  rewrite [mul_assoc]
  rewrite [h1]
  rewrite [mul_id]
  rfl

Conclusion "
Well done!
"
