import Game.Levels.MonoidWorld.L01_identities


World "MonoidWorld"
Level 2
Title "A simple identity."

Introduction "
The order in which you use `id_mul` and `mul_id` shouldn't matter.
"
namespace MyMonoid

variable {M : Type}

open MyMonoid

/-- For all $a, b$, $e * a * b * e = a * b$. -/
Statement [inst : MyMonoid M] (a b : M) : e * a * b * e = a * b := by
  rewrite [id_mul]
  rewrite [mul_id]
  rfl

Conclusion "
Nice!
"
