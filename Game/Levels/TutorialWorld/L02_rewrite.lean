import Game.Levels.TutorialWorld.L01_reflexive

World "TutorialWorld"
Level 2

Title "The rewrite tactic"

Introduction "
The `rewrite` tactic allows us to use a basic hypothesis like `x=y` in our proof.

If we enter `rewrite [h1]`, where `h1` is the hypothesis `x=y`, then Lean will look for all occurences of `x` in the current goal and it will replace them with `y`.

Try this out now.
"

NewTactic rewrite

/--If $x$, $y$, and $z$ are natural numbers, and $x = y$ and $y = z$, then $x * x = y * z$.-/
Statement (x y z : Nat) (h1 : x = y) (h2 : y = z): x * x = y * z := by
  rewrite [h1]
  Hint (hidden := false) "If we next use `rewrite [h2]` then the goal will be updated to `z * z = z * z`. Alternatively, we can replace `z` with `y` to reach the state `y * y = y * y`. This is achieved by entering `rewrite [← h2]`.

  Note that the syntax for the arrow is `backslash l`.

  Choose either approach and continue with the proof. Note that you can click *Retry* to fix a mistake or try an alternative approach."
  Branch
    rewrite [h2]
    Hint (hidden := false) "`rfl` will now close the goal."
    rfl

  rewrite [← h2]
  Hint (hidden := false) "`rfl` will now close the goal."
  rfl

Conclusion "Well done!"
