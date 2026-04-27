import Game.Levels.MonoidWorld.L03_id_unique

World "MonoidWorld"
Level 4
Title "Partial inverses"

Introduction "
You will need to use `mul_assoc` at least once in your proof.
"
namespace MyMonoid

variable {M : Type}

open MyMonoid

/-- Let $a$ be an element of a monoid. If there exists elements $b$ and $c$ such that $a * b = e$ and $c * a = e$ then $b = c$.-/
Statement [inst : MyMonoid M] (a b c : M) (h1 : a * b = e) (h2 : c * a = e) : b = c := by
  rewrite [← id_mul b]
  rewrite [← h2]
  rewrite [mul_assoc]
  rewrite [h1]
  rewrite [mul_id]
  rfl

Conclusion "
Good work!
"

end MyMonoid
