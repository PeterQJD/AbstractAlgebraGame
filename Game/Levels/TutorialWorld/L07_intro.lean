import Game.Levels.TutorialWorld.L06_forall

World "TutorialWorld"
Level 7

Title "The intro tactic."

Introduction "
In the previous level we learned how to use a forall statement to close our goal. In this level, we will learn how to prove a for all statement.

Suppose we wish to prove that for all natural numbers `n`, `n + 0 =n`. We can do this by first introducing an arbitrary natural number by writing `intro n`.

Next, we can `rewrite` the left-hand side using the theorem `Nat.add_zero`, which states that `n + 0 = n`.

Finally, we can close the goal with `rfl`. Try it for yourself.
"
namespace tutorial

Statement : ∀ n : ℕ, n + 0 = n := by
  intro n
  rewrite [Nat.add_zero]
  rfl

Conclusion "Good Work!

Of course, we could have written `exact Nat.add_zero` to immediately close the goal.

But if you're faced with a for all statement and you don't know what to do, `intro _` will always make progress."

NewTactic intro

/- Use these commands to add items to the game's inventory. -/
