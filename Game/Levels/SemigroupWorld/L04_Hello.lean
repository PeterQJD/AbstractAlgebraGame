import Game.Levels.SemigroupWorld.L03_Hello


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
  Hint "Try begining with 'rw [Idempotent_def]' to use the definition of idempotance."
  rw [Idempotent_def]
  have h1: a * b * a * b = a * b := by rw[h]
  rw [← mul_assoc]
  exact h1

Conclusion "
The message shown when the level is completed
"
