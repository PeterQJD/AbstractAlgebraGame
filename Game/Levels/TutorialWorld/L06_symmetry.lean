import Game.Levels.TutorialWorld.L05_theorems

World "TutorialWorld"
Level 6

Title "The symmetry tactic."

Introduction "
The `symm` tactic will rewrite the current goal from `m = n` to `n = m`.

We can also apply this to the hypothesis `h` by writing `symm at h`.

Try either approach to close the current goal."

NewTactic symm

-- I don't know how to stop both hints from appearing at the same time. I want only one to appear depending on which route the user has taken: symm or symm at h.

/--If $n$ and $m$ are natural numbers, and $n = m$, then $m = n$.-/
Statement (n m : ℕ) (h : n = m): m = n := by
  Hint (hidden := false) "The `exact` tactic will help."
  Branch
    symm
    Hint (hidden := false) "The `exact` tactic will help."
    exact h

  symm at h
  Hint (hidden := false) "You can now use the `exact` tactic."
  exact h

Conclusion "
Well done!

The `at` syntax also works for the `rewrite` tactic: `rewrite g at h` will rewrite `h` using `g`.
"
