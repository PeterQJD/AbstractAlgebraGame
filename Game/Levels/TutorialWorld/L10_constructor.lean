import Game.Levels.TutorialWorld.L09_specialize

World "TutorialWorld"
Level 10

Title "The constructor tactic"

Introduction "
The `constructor` tactic will split a goal of the form `p ∧ q`, i.e., `p` **and** `q`, into two new goals: one for `p` and one for `q`.

You'll have to prove the intermediate goal `p` before moving onto `q`.
"

NewTactic constructor

/--If $m$ and $n$ are natural numbers, and $m = n$ and $n = 1$, then $n = m$ and $n = 1$.-/
Statement (m n : MyNat) (h1 : m = n) (h2 : n = 1 ) : n = m ∧ n = 1:= by
  constructor
  Hint (hidden := true) "The `symm` tactic will help here."
  symm
  exact h1
  exact h2

Conclusion "Good work!"
