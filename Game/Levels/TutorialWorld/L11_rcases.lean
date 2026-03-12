import Game.Levels.TutorialWorld.L10_constructor

World "TutorialWorld"
Level 11

Title "The rcases tactic"

Introduction "The `rcases` tactic is similar to constructor but it is applied to a hypothesis instead of a goal.

We can use it to split a hypothesis `h` of the form `p ∧ q` into two new hypotheses: one for `p`, labelled **left**, and one for `q`, labelled **right**.

The syntax is `rcases h`.
"

NewTactic rcases

Statement (m n : MyNat) (h : m = n ∧ n = 1) : m = 1 := by
  rcases h
  rewrite [left]
  exact right

Conclusion "Good work!"
