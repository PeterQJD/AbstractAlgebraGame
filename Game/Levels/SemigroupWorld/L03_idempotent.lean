import Game.Levels.SemigroupWorld.L02_using_assoc

World "SemigroupWorld"
Level 3
Title "Idempotents"

Introduction "
An element `a` of a semigroup `S` is called an idempotent if and only if `a * a = a`.

The current goal can be closed with the `rfl` tactic, showing that the statement `Idempotent (a)` is *definitionally* equal to the statement `a * a = a`.
"

namespace MySemigroup

NewDefinition MySemigroup.Idempotent

variable {S : Type}

open MySemigroup

Statement (a : S) [inst : MySemigroup S]: Idempotent (a) ↔ a * a = a := by
  Hint (hidden := true) "This result is true by definition so you only need to prompt Lean to check that with the `rfl` tactic."
  rfl

Conclusion "
We can now use `rewrite [Idempotent]` to transform `Idempotent (a)` to `a * a = a` whenever we see it in a goal.`
"

end MySemigroup
