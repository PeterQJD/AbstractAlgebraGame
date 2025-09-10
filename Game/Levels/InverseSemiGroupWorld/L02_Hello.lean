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


/-- This statement states that the weak inverse of x is y, if and only if -/
Statement (a b : ISG) (h: weak_inverse a b): b  = b * a * b   := by
  rewrite [weak_inverse_def] at h
  rcases h
  rewrite [right]
  rfl
Conclusion "
The message shown when the level is completed
"
