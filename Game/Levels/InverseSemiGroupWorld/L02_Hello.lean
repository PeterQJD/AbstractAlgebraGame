import Game.Levels.InverseSemiGroupWorld.L01_Hello


World "InverseSemiGroupWorld"
Level 2
Title "Hello World"

Introduction "
Now that we are working with an Inverse Semigroup, we have both associativity
and the existance of inverse elements for every element in the set. This
Exercise is just to introduce the idea of a 'weak_inverse'.
"

namespace myinversesemigroup

variable {ISG : Type} [MyStructure ISG]
open MyStructure


/-- Assuming the weak inverse of $a$ is $b$, prove $b$ equals $b * a * b$ -/
Statement (a b : ISG) (h: weak_inverse a b): b  = b * a * b   := by
  rewrite [weak_inverse_def] at h
  rcases h
  rewrite [right]
  rfl
Conclusion "
Good Work!
"

DisabledTheorem MyStructure.mul_one MyStructure.one_mul MyStructure.mul_comm
