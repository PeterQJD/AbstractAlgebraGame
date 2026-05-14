import Game.Levels.MonoidWorld.L05_commutativity

World "MonoidWorld"
Level 6
Title "Proving commutativity"

Introduction "In this level you will show that commutativity follows from an associativity like property.
"

open MyMonoid

variable {M : Type}

/-- Let $M$ be a monoid and let $a, b ∈ M$. If, $\forall x, y, z ∈ M$, $x * (y * z) = (x * z) * y$ then $a * b = b * a$. -/
Statement [inst : MyMonoid M] {a b : M} (h : ∀ x y z : M, x * (y * z) = (x * z) * y) : a * b = b * a := by
  specialize h e a b
  rewrite [id_mul] at h
  rewrite [id_mul] at h
  exact h

Conclusion "Very good!"
