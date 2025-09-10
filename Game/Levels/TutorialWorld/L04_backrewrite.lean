import Game.Levels.TutorialWorld.L03_rewrite

World "TutorialWorld"
Level 4

Title "More on the rewrite tactic"

Introduction "In the previous level we used the `rewrite` tactic in the following way:

if `h` is the assumption `p = q`,  then `rewrite [h]` will replace any occurrence of `p` in the active goal with `q`.

If instead we wish to `rewrite` `q` to `p`, then we can achieve this by writing `rewrite [← h]`.

The backwards arrow is entered with backslash l.

Try this out by rewriting the given statement so that it reads `3 = 3`.
"

namespace tutorial

Statement (x y : Nat) (h₁ : 3 = x) (h₂ : 3 = y) : x = y := by
  rewrite [← h₁]
  rewrite [← h₂]
  rfl

Conclusion "Well done!
"

/- Use these commands to add items to the game's inventory. -/
