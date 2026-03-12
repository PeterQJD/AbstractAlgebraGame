import Game.Levels.TutorialWorld.L04_exact

World "TutorialWorld"
Level 5

Title "Using theorems"

Introduction "To help us prove our theorems, we have access to Mathlib, which is a large library of definitions and proofs.

For example, `add_zero` is a proof of `∀ n ∈ ℕ, n + 0 = n`.

We can use this proof to show that for a given natural number `m`, `m+0=m`.

This is done via `rewrite [add_zero]`. Give it a go.
"

namespace MyNat

Statement (m : MyNat) : m + 0 = m := by
  rewrite [add_zero]
  rfl

Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic exact
NewTheorem MyNat.add_zero
