import Game.Levels.TutorialWorld.L04_exact

World "TutorialWorld"
Level 5

Title "The nth_rewrite tactic"

Introduction "Click on the description box to get an idea of the tactic,
each variable is index going left to right starting from 1, nth_rewrite allows you to
specify exactly where in the expression you want to perform a rewrite by specifying the index.
for example, 'nth_rewrite 2 [h]' would substitute at the second variable (going left to rigth) -
provided the substitution is valid."

namespace tutorial

Statement (x y z : Nat) (h₁ : x = y) (h₂ : x * x * y = x * y * z) : x * y * y = x * y * z := by
  Hint "Try nth_rewriting (using a specific index) at h₂"
  nth_rewrite 2 [h₁] at h₂
  exact h₂

Conclusion "Well done!

You might be thinking why we bothered to perform a second rewrite when our goal was exactly the assumption `h₂`.

The next level will show you how we can use assumptions to close the goal.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic nth_rewrite
