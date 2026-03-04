import Game.Levels.TutorialWorld.L01_reflexive

World "TutorialWorld"
Level 2

Title "REWRITE"

Introduction "The `rewrite` tactic allows us to use a basic hypothesis like `x=y` in our proof.

If we write `rewrite [h1]`, where `h1` is the hypothesis `x=y`, then Lean will look for the first occurence of `x` in the current goal statement and replace it with `y`.

Try this out now.

Notice that the goal has updated and we now need to prove that `y=z`. We can use hypothesis to `h2` to rewrite the goal a second time.

You should now be able to use `rfl` to close the goal.
"

namespace tutorial

Statement (x y z : Nat) (h1 : x = y) (h2 : y = z): x = z := by
  rewrite [h1]
  Hint (hidden := true) "Now rewrite using `h2`."
  rewrite [h2]
  Hint (hidden := true) "You can now use `rfl`."
  rfl

Conclusion "Well done!

You might be wondering why we bothered to perform a second rewrite when our goal was exactly the assumption `h2`.

We will soon see how we can use assumptions to close a goal, but before that we will inbtroduce a few more rewrite features.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic rewrite
