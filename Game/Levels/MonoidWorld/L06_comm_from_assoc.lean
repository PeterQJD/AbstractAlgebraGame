import Game.Levels.MonoidWorld.L05_commutativity

World "MonoidWorld"

Level 6

Title "Proving Commutativity"

Introduction "
In this level you will show that commutativity follows from an associativity like property.
"

open MyMonoid

variable {M : Type} [inst : MyMonoid M]

/--
Let $M$ be a monoid and let $a, b ∈ M$. If, $\forall x, y, z ∈ M$, $x * (y * z) = (x * z) * y$ then $a * b = b * a$.
-/
Statement {a b : M} (h : ∀ x y z : M, x * (y * z) = (x * z) * y) : a * b = b * a := by
  specialize h e a b
  rewrite [id_mul] at h
  rewrite [id_mul] at h
  exact h

Conclusion "
Very good! You've completed Monoid World.

The focus of the next world is on groups. We obtain a group from a monoid by adding inverse elements.

Alternatively, we can form a group by adding an identity element to a Inverse Semigroup, so you may wish to complete that world before moving on to Group World.
"
