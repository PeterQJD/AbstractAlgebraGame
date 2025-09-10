import Game.Metadata
import Game.Custom.MyStructure.Definition


World "InverseSemiGroupWorld"
Level 1
Title "Hello World"

Introduction "
Now that we are working with an Inverse Semigroup, we have both associativity
and the existance of inverse elements for every element in the set. This
Exercise is just to introduce the idea of 'weak_inverse'
"

namespace myinversesemigroup

variable {ISG : Type} [MyStructure ISG]
open MyStructure

/--
This result which is true by definition, states that the lean expression
weak_inverse x y meaning that the weak inverse of $x$ is $y$, is true if and only if
$ x * y * x = x ∧ y * x * y = y $. This is a generalisation of how inverse
are defined in a group, as there is no identity element in an inverse semi group
-/
TheoremDoc myinversesemigroup.weak_inverse_def as "weak_inverse_def" in "Inverse Semigroup"



/-- This statement states that the weak inverse of x is y, if and only if -/
Statement weak_inverse_def (x y : ISG) : weak_inverse x y ↔ x * y * x = x ∧ y * x * y = y  := by
  rfl

Conclusion "
The message shown when the level is completed
"
DisabledTheorem MyStructure.mul_one MyStructure.one_mul MyStructure.mul_comm
NewTheorem  myinversesemigroup.weak_inverse_def
