import Game.Levels.TutorialWorld.L06_forall

World "TutorialWorld"
Level 7

Title "Even more on rewrite."

Introduction "Up to now, most of our proofs have been completed by performing a final `rewrite` followed by `rfl`.

The `rw` tactic combines both tactics.

It will first perform the `rewrite` and then attempt to close the goal with `rfl`.

If the goal can't be closed with `rfl` then the goal will be updated to reflect the changes made by `rewrite`.

Try it out.
"
namespace tutorial

Statement (x y z : ℕ) (h₁ : x = y) (h₂ : y = z) : x = z := by
  Hint (hidden := true) "You can use `rewrite [h₁]` or `rw [h₁]`"
  rw [h₁]
  rw [h₂]

Conclusion "Good work!"

NewTactic rw
