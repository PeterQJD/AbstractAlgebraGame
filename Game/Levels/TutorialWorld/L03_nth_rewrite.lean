import Game.Levels.TutorialWorld.L02_rewrite

World "TutorialWorld"
Level 3

Title "The nth_rewrite tactic"

Introduction "The `nth_rewrite` tactic allows you to rewrite one particular occurence of a variable.

For example, in the current goal we can replace the second occurence of `x` with `y` by entering `nth_rewrite 2 [h]`.

Try it out and then complete the proof."

namespace tutorial

Statement (x y : Nat) (h : x = z) : x * x * y = x * z * y := by
  nth_rewrite 2 [h]
  rfl

Conclusion "Well done!

As you may have guessed, we can use the `←` notation inside an `nth_rewrite`. E.g., `nth_rewrite 2 [← h]`.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic nth_rewrite
