import Game.Levels.TutorialWorld.L04_nth_rewrite

World "TutorialWorld"
Level 5

Title "Constructor and pick_goal"

Introduction "This level will introduce the constructor and pick_goal tactics these allow you to break multiple ANDs in propositions into multiple goals

and choose which goal to prove first respectively. To use pick_goal you provide it a natural number, so it will look like \"pick_goal n\" where n

is a natural number.
"

namespace tutorial

Statement (x y : Nat) (h₁ : x = y) : x = y ∧ y = x := by
  constructor
  pick_goal 1
  exact h₁

  rewrite [h₁]
  rfl

Conclusion "Well done!

The next level will show you how forall statements are used.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic constructor pick_goal
