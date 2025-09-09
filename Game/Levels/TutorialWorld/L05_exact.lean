import Game.Levels.TutorialWorld.L04_nth_rewrite

World "TutorialWorld"
Level 5

Title "The exact tactic"

Introduction "Let's revisit our previous proof.

After the first `rewrite`, our goal is `y = z`.

Instead of performing the second `rewrite` with `h₂`, we can immediately close the goal by writing `exact h₂`, i.e., the statement we wish to prove is *exactly* our assumption `h₂`.
"

namespace tutorial

Statement (x y z : Nat) (h₁ : x = y) (h₂ : y = z): x = z := by
  rewrite [h₁]
  exact h₂

Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic exact
