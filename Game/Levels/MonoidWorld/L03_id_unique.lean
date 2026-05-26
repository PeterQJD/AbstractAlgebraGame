import Game.Levels.MonoidWorld.L02_id_id

World "MonoidWorld"

Level 3

Title "The Identity Element is Unique"

Introduction "
Now you are going to prove that the identity element $e$ is unique. In other words, if there exists an element $f ∈ M$ satisfying, for all $a ∈ M$, $f * a = a$ and $a * f = e$, then $f = e$.
"

open MyMonoid

variable {M : Type} [inst : MyMonoid M]

namespace MyMonoid

/--
In a monoid, the identity element is unique.
-/
Statement id_unique (f : M) (h1 : ∀ a, f * a = a) (h2 : ∀ a, a * f = a) : f = e := by
  specialize h1 e
  rewrite [mul_id] at h1
  exact h1

Conclusion "
Good work!
"

end MyMonoid

NewTheorem MyMonoid.id_unique
