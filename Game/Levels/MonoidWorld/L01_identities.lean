import Game.Metadata
import Game.Custom.MyMagma.Definition -- for use in level 4
import Game.Custom.MySemigroup.Definitions -- for looking back
import Game.Custom.MyMonoid.Definition
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions

World "MonoidWorld"
Level 1
Title "Hello World"

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
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
The message shown when the level is completed
"
