import Game.Levels.SemigroupWorld.L02_assocprob1


World "SemigroupWorld"
Level 3
Title "Semigroup World."

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"

def MyStructure.Idempotent {S : Type u} [MyStructure S] (x : S) : Prop :=
x * x = x

namespace mysemigroup

variable {S : Type} [MyStructure S]

open MyStructure -- for easy access to axioms

/--
This result which is true by definition states that an element $a$ is idempotent,
if and only if $a * a = a$
-/
TheoremDoc mysemigroup.Idempotent_def as "Idempotent_def" in "Semigroup"

Statement Idempotent_def (a : S): Idempotent (a) ↔ a * a = a := by
  Hint "This result is true by definition so you only need to prompt lean to check..."
  rfl

Conclusion "
The message shown when the level is completed
"

NewTheorem mysemigroup.Idempotent_def
