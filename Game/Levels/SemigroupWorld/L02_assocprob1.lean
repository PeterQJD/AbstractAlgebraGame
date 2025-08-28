import Game.Levels.SemigroupWorld.L01_assoc


World "SemigroupWorld"
Level 2
Title "Semigroup World."

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"

namespace mysemigroup

variable {S : Type} [MyStructure S]
open MyStructure -- for easy access to axioms

TheoremDoc MyStructure.mul_assoc as "mul_assoc" in "Axioms"

/--This theorem shows that associativity can be extended to a product of four elements.-/
Statement (a b c d : S) : (a * (b * c)) * d = (a * b ) * (c * d):= by
  rewrite [mul_assoc]
  rewrite [mul_assoc b]
  rewrite [← mul_assoc a]
  rfl

Conclusion "
The message shown when the level is completed
"
