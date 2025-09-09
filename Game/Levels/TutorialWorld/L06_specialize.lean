import Game.Levels.TutorialWorld.L05_forall

World "TutorialWorld"
Level 6

Title "The specialize tactic."

Introduction "
In the previous level we learnt how to use symmetry, now to end things off we will
learn a very hand tactic for when an assumption is a for all statement and you
want to use a specific instance of the variable.
"

namespace tutorial

/--
This tactic allows us to have specific consequences of assumptions that are 'for all' statements as
hypothesis, where the variable in the statement with $∀$ quantifier gets replaced with what you input.

The format is: specialize hypothesis_name desired_variable_value
-/
TacticDoc specialize

Statement (n : ℕ) (h : ∀ a, n + a = m + a ): n = m := by
  Hint "To prove the following, as 'h' holds for all a,
   that includes zero, so we can use 'specialize h 0'
  to get that specific consequence of our assumption "
  specialize h 0
  repeat rewrite [Nat.add_zero] at h
  exact h


Conclusion "Good work!"

NewTactic specialize
NewTheorem Nat.add_zero
