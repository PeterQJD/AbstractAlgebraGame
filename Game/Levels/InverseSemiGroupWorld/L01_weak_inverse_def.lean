import Game.Metadata
import Game.Custom.MyInverseSemigroup.Definition
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions


World "InverseSemiGroupWorld"
Level 1
Title "Introducing weak inverses"

Introduction "
Now that we are working with an Inverse Semigroup, we have both associativity
and the existance of inverse elements for every element in the set. This
Exercise is just to introduce the idea of 'weak_inverse'.
"

namespace MyInverseSemigroup

NewDefinition MyInverseSemigroup MyInverseSemigroup.Weak_inverse

variable {ISG : Type} [MyInverseSemigroup ISG]

open MyInverseSemigroup


/-- This statement states that the weak inverse of x is y, if and only if $x * y * x = x$ AND $y * x * y = y$ -/
Statement (x y : ISG) : Weak_inverse x y ↔ x * y * x = x ∧ y * x * y = y  := by
  rfl


Conclusion "
Great stuff!
"
