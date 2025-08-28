import Game.Levels.SemigroupWorld.L02_assocprob1


World "SemigroupWorld"
Level 3
Title "Semigroup World."

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"

def MyStructure.Idempotent {S : Type u} [MyStructure S] (x : S) : Prop :=
x * x = x

/--
some description
-/
DefinitionDoc MyStructure.Idempotent as "Idempotent_def"

namespace mysemigroup

variable {S : Type} [MyStructure S]

open MyStructure -- for easy access to axioms

/--This theorem shows that associativity can be extended to a product of four elements.-/
Statement Idempotent_def (a : S): Idempotent (a) ↔ a * a = a := by
  Hint "This result is true by definition so you only need to prompt lean to check"
  rfl

Conclusion "
The message shown when the level is completed
"

NewTheorem mysemigroup.Idempotent_def
