import Game.Levels.SemigroupWorld.L03_idempotent_def


World "SemigroupWorld"
Level 4
Title "Semigroup World."

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"
namespace mysemigroup

variable {S : Type} [MyStructure S]

open MyStructure -- for easy access to axioms

/--This theorem shows that associativity can be extended to a product of four elements.-/
Statement (a b: S) (h : a * b * a = a): Idempotent (a * b):= by
  Hint "Try begining with 'rewrite [Idempotent_def]' to use the definition of idempotance."
  rewrite [Idempotent_def]
  rewrite [← mul_assoc]
  rewrite [h]
  rfl

Conclusion "
The message shown when the level is completed
"
