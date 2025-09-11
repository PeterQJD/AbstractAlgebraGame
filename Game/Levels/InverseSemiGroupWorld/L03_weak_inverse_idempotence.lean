import Game.Levels.InverseSemiGroupWorld.L02_using_weak_inverse
import Game.Levels.SemigroupWorld.L03_Hello


World "InverseSemiGroupWorld"
Level 3
Title "Hello World"

Introduction "
Now that we are working with an Inverse Semigroup, we have both associativity
and the existance of inverse elements for every element in the set. This
Exercise is to illustrate the connection between idempotence and weak inverses.
"

namespace myinversesemigroup

variable {ISG : Type} [MyStructure ISG]
open MyStructure mysemigroup



/-- This statement states that if the weak inverse of a is b, then a * b is idempotent -/
Statement (a b : ISG) (h: weak_inverse a b) : Idempotent (a * b) := by
  Hint (hidden := true) "You may want to rewrite using the definitions"
  rewrite [Idempotent_def]
  rewrite [weak_inverse_def] at h
  rewrite [← mul_assoc]
  rcases h
  rewrite [left]
  rfl


Conclusion "
Now that we have an understanding of what a weak inverse is, as we progress
into group world you will find the idea of an inverse changes, now an inverse of
a group element a is denoted a⁻¹, and a * a⁻¹ = a⁻¹ * a = e = 1, where e is the identity element
denoted as 1.
"
DisabledTheorem MyStructure.mul_one MyStructure.one_mul MyStructure.mul_comm
