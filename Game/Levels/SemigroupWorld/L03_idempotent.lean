import Game.Levels.SemigroupWorld.L02_using_assoc

World "SemigroupWorld"

Level 3

Title "Idempotents"

Introduction "
An element $a$ of a semigroup $S$ is called an idempotent if and only if $a * a = a$.

The current goal can be closed with the `rfl` tactic, showing that the statement `Idempotent (a)` is *definitionally* equal to the statement `a * a = a`.
"
open MySemigroup

NewDefinition MySemigroup.Idempotent

variable {S : Type} [inst : MySemigroup S]

Statement (a : S) : Idempotent a ↔ a * a = a := by
  Hint (hidden := true) "This result is true by definition, so `rfl` should work."
  rfl

Conclusion "
You can now use `rewrite [Idempotent]` to transform `Idempotent (a)` to `a * a = a` whenever you see it in a goal.`
"
