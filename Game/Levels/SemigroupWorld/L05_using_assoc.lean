import Game.Levels.SemigroupWorld.L04_using_idempotence


World "SemigroupWorld"
Level 5
Title "Semigroup World."

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"


/--
This Axiom states that for all elements $a, b$ in our structure, $a * b = b * a$.
-/
TheoremDoc MyStructure.mul_comm as "mul_comm" in "Semigroup"

namespace mysemigroup

variable {S : Type} [MyStructure S]

open MyStructure -- for easy access to axioms

/--This theorem shows how commutivity can be applied and when it is needed.-/
Statement (a b c : S): a * (b * c) = c * a * b := by
  rewrite [mul_comm b]
  rewrite [← mul_assoc]
  rewrite [mul_comm a]
  rfl
Conclusion "
The message shown when the level is completed
"

NewTheorem MyStructure.mul_comm -- introducing commutivity
