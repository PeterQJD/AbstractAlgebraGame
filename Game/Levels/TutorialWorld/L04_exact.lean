import Game.Levels.TutorialWorld.L03_nth_rewrite

World "TutorialWorld"
Level 4

Title "The exact tactic"

Introduction "
A hypothesis can be used to rewrite a goal. It can also be used to close a goal if the current goal state matches the hypothesis exactly.

The `exact` tactic does precisely this job. The syntax is `exact h`, where `h` is the hypothesis that matches the goal.

Use a single `rewrite` and `exact` to prove that `x=z` whenever `x=y` and `y=z`.
"

NewTactic exact

/--If $x$, $y$, and $z$ are natural numbers, and $x = y$ and $y = z$, then $x = z$.-/
Statement (x y z : Nat) (h1 : x = y) (h2 : y = z): x = z := by
  rewrite [h1]
  exact h2

Conclusion "Good work!"
