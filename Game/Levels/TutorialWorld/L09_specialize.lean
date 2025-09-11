import Game.Levels.TutorialWorld.L08_apply

World "TutorialWorld"
Level 9

Title "The specialize tactic."

Introduction "
In the previous level we learnt how to use symmetry, now we will
learn a very handy tactic for when an assumption is a for-all statement and you
want to use a specific instance of the variable.
"
/--
This result states that for all natural numbers $n$.
n + 0 = n
-/
TheoremDoc Nat.add_zero as "Nat.add_zero" in "Nat"
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
  rewrite [Nat.add_zero] at h
  rewrite [Nat.add_zero] at h
  exact h


Conclusion "Good work! To make life easier,
 you can use repeat rewrite [Nat.add_zero] at h, to apply the result as many times
 as it can be."

NewTactic specialize
NewTheorem Nat.add_zero
