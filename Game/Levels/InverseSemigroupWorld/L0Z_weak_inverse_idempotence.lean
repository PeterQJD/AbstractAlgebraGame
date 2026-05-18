import Game.Levels.InverseSemiGroupWorld.L02_using_weak_inverse


World "InverseSemiGroupWorld"
Level 3
Title "Weak inverses and idempotance"

Introduction "
This exercise is to illustrate the connection between idempotence and weak inverses.

As before you will need to use the defintion of a weak inverse and the definiton of idempotent element.
Associtivity will be useful as well.
"

namespace MyInverseSemigroup

NewDefinition MyInverseSemigroup.Idempotent

NewTheorem MyInverseSemigroup.mul_assoc

variable {ISG : Type} [MyInverseSemigroup ISG]

open MyInverseSemigroup

/-- This statement states that if the weak inverse of $a$ is $b$, then $a * b$ is idempotent -/
Statement (a b : ISG) (h: Weak_inverse a b) : Idempotent (a * b) := by
  Hint (hidden := true) "You may want to rewrite using the definitions"
  rewrite [Idempotent]
  rewrite [Weak_inverse] at h
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
