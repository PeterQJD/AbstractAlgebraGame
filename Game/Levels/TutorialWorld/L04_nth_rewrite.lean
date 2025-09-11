import Game.Levels.TutorialWorld.L03_exact

World "TutorialWorld"
Level 4

Title "The nth_rewrite tactic"

Introduction ""

namespace tutorial

Statement (x y z : Nat) (h₁ : y = x) (h₂ : x * x * y = x * y * z) : x * y * y = x * y * z := by
  nth_rewrite 1 [h₁]
  exact h₂



Conclusion "Well done!

You might be thinking why we bothered to perform a second rewrite when our goal was exactly the assumption `h₂`.

The next level will show you how we can use assumptions to close the goal.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic nth_rewrite
