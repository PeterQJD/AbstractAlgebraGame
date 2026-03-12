import Game.Levels.TutorialWorld.L08_apply

World "TutorialWorld"
Level 9

Title "The specialize tactic"

Introduction "In level 7 we learned how to prove a for all statement using the `intro` tactic (checkout the **Tactics** tab for a reminder).

In this level we will learn how to *use* a for all statement.

Hypothesis `h` states that `∀ a, n + a = m + a`. In particular, `n + a = m + a` holds for the specific case `a = 0`.

In Lean, we express this as `specialize h 0`. Give it a go."

namespace MyNat

NewTactic specialize

Statement (m n : ℕ) (h : ∀ a, m + a = n + a): m = n := by
  specialize h 0
  Hint (hidden := false) "We can rewrite `h` to transform it into the goal."
  rewrite [add_zero] at h
  rewrite [add_zero] at h
  Hint (hidden := false) "Almost there."
  exact h

Conclusion "Good work!"
