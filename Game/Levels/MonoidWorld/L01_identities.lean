import Game.Metadata
import Game.Custom.MySemigroup.Definitions -- for looking back
import Game.Custom.MyMonoid.Definition
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions

World "MonoidWorld"
Level 1
Title "The identity element"

Introduction "
A Monoid is a semigroup with the adittional property of having an identity element (a 'do nothing' element).
This level is just to get you aquainted with using the identity element. You are not proving any theorems, yet!
"
namespace MyMonoid

NewDefinition MyMonoid

NewTheorem MyMonoid.mul_one MyMonoid.one_mul

variable {M : Type} [MyMonoid M] -- M for monoid seems fitting.

open MyMonoid


/-- The exercise statement in natural language using latex: $\iff$. -/
Statement (a b : M) : 1 * (a * b) * 1 = a * b := by
  rewrite [← mul_assoc]
  rewrite [one_mul]
  rewrite [mul_one]
  rfl


Conclusion "
Great job! we can apply the identity on the left and on the right. Which is not neccessarily the case for other elements in our monoid.
"
