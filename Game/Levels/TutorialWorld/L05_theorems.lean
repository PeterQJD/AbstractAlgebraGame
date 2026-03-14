import Game.Levels.TutorialWorld.L04_exact

World "TutorialWorld"
Level 5

Title "Using theorems"

Introduction "
To help us prove our theorems, we have access to Mathlib, which is a large library of definitions and proofs.

For example, `add_zero` is a proof of `∀ a ∈ ℕ, a + 0 = a`.

We can use this proof to show that for a given natural number `m`, `m+0=m`.

This is done via `rewrite [add_zero]`. Give it a go.
"

TheoremTab "Tutorial"

NewTheorem MyNat.add_zero

open MyNat

/--For a given natural number `m`, we have `m + 0 = m`.-/
Statement (m : MyNat) : m + 0 = m := by
  rewrite [add_zero]
  rfl

Conclusion "
Good work!

The `rfl`, `rewrite` and `exact` tactics will be the main workhorses for all future worlds, but occassionally we will require some different tactics.

These will be introduced over the next few levels of Tutorial World, starting with `sym`.
"
