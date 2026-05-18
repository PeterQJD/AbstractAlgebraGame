import Game.Levels.InverseSemiGroupWorld.L01_weak_inverse_def

World "InverseSemiGroupWorld"
Level 2
Title "Using weak inverses"

Introduction "
Now that we are working with an Inverse Semigroup, we have both associativity
and the existance of inverse elements for every element in the set. This
Exercise is just to introduce the idea of a 'weak_inverse'.
"

namespace MyInverseSemigroup

variable {ISG : Type} [MyInverseSemigroup ISG]

open MyInverseSemigroup

/-- Assuming the weak inverse of $a$ is $b$, prove $b$ equals $b * a * b$ -/
Statement (a b : ISG) (h: Weak_inverse a b): b  = b * a * b   := by
  rewrite [Weak_inverse] at h
  rcases h
  rewrite [right]
  rfl
Conclusion "
Good Work!
"
