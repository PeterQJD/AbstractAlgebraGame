import Game.Levels.TutorialWorld.L03_exact

World "TutorialWorld"
Level 4

Title "Using a ∀ statement."

Introduction "If we try to close the goal using `exact h`, we will receive an error message

Try it out.

The problem is that the statement of our goal is not exactly the same as our assumption. The assumption is a statement about all natural numbers `x` whereas our goal is a statement about a particular natural number `n`.

All is not lost, however. Since `h` is a for all statement, it must hold in the case where `x = n`.

We can express this in Lean by writing `exact h n`.
"

namespace tutorial

Statement (h : ∀ (x : ℕ), x < x + 1) : n < n + 1 := by
 exact h n

Conclusion "Good Work!"
