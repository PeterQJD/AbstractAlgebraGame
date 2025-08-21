import Game.Metadata
<<<<<<< HEAD:Game/Levels/SemigroupWorld/L01_Hello.lean
import Game.Custom.MySemigroup.Definition
=======
import Game.Custom.MySemigroup
>>>>>>> ebaac83 (structure rename):Game/Levels/SemiGroupWorld/L01_Hello.lean

World "SemigroupWorld"
Level 1
Title "Hello World"

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"

namespace mysemigroup

variable {G : Type} [MySemigroup G]
open MySemigroup -- for easy access to axioms

/--This axiom tells us that multiplication in a semigroup is associative.-/
TheoremDoc MySemigroup.mul_assoc as "mul_assoc" in "Axioms"

/--This theorem shows that associativity can be extended to a product of four elements.-/
Statement (a b c d : G) : (a * (b * (c * d))) = a * ((b * c) * d):= by
  rw [mul_assoc]

Conclusion "
The message shown when the level is completed
"
