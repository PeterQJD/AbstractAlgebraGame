import Game.Levels.TutorialWorld.L07_intro

World "TutorialWorld"
Level 8

Title "The apply tactic"

Introduction "
Suppose we want to prove the proposition `q`. If we have a hypothesis `h` that says `p → q` (i.e., `p` implies `q`) then it's sufficient to give a proof of the proposition `p` because we can then use modus ponens to deduce `q`.

In Lean, the corresponding tactic is `apply`: `apply h` will transform the goal from `q` to `p`.

Try it now for the current goal.
"

NewTactic apply

/--If $a$ and $b$ are natural numbers, and $b = 0$, then $a + b = a$.-/
Statement (a b : MyNat) (h1 : b = 0) (h2 : b = 0 → a + b = a): a + b = a := by
  apply h2
  Hint (hidden := false) "Notice we now have to prove that `b = 0`. Perhaps `h1` will help..."
  exact h1

Conclusion "Good work!"
