import Game.Levels.TutorialWorld.L06_symmetry

World "TutorialWorld"
Level 7

Title "The intro tactic."

Introduction "
In level 5 we proved that for a given `m ∈ ℕ`, `m + 0 = m`. In this level we will prove the more general statement `∀ m ∈ ℕ, m + 0 = m`.

In a *pen & paper* proof, the first thing we'd write would be: Let $m ∈ ℕ$ ... . The corresponding tactic in Lean is `intro m`.

Try it now.
"

open MyNat

NewTactic intro

/--For all natural numbers `m`, we have `m + 0 = m`.-/
Statement : ∀ m : MyNat, m + 0 = m := by
  intro m
  Hint (hidden := false) "We can now use a theorem introduced in level 5. Click the **Theorems** tab for a reminder or the **Show more help!** button for a hint."
  Hint (hidden := true) "`rewrite [add_zero]` will make progress."
  rewrite [add_zero]
  rfl

Conclusion "
Excellent!

We could have written `exact add_zero` to immediately close the goal, but our slightly contrived approach was designed to highlight how the `intro` tactic works.

Whenever you're faced with a for all statement and you don't know what to do, `intro _` will always make progress.
"
