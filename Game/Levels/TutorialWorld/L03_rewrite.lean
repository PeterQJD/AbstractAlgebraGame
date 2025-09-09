import Game.Levels.TutorialWorld.L02_symmetry

World "TutorialWorld"
Level 3

Title "The rewrite tactic"

Introduction "Next, we are going to prove that if `x = y` and `y = z` then `x = z`.

The statements `x = y` and `y = z` appear as assumptions `h₁` and `h₂`, respectively.

We will first use the `rewrite` tactic to replace `x` with `y`, thus updating our goal to `y = z`. We do this by writing `rewrite [h₁]`. Note that you have to type h and then backslash 1 to get `h₁`.

We can then perform a second rewrite, using assumption `h₂` to replace `y` with `z`.

Our goal is now `z = z`, which can be closed using `rfl`.

Try it out. If you need a hint, click the Show more help! button when it appears.
"

namespace tutorial

Statement (x y z : Nat) (h₁ : x = y) (h₂ : y = z): x = z := by
  rewrite [h₁]
  Hint (hidden := true) "Now rewrite using `h₂`."
  rewrite [h₂]
  Hint (hidden := true) "You can now use rfl."
  rfl

Conclusion "Well done!

You might be thinking why we bothered to perform a second rewrite when our goal was exactly the assumption `h₂`.

The next level will show you how we can use assumptions to close the goal.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic rewrite
