import Game.Levels.TutorialWorld.L11_rcases

World "TutorialWorld"
Level 12

Title "The induction tactic."

Introduction "
In this level, we will use the `induction` tactic to prove that `0 + a = a` for any natural number `a`. Note that we can't simply use our theorem `add_zero` because we don't have a theorem that says that addition of natural numbers is commutative.

To start the induction, we enter `induction a`. Try it now.
"

open MyNat

NewTactic induction
NewTheorem MyNat.zero_eq_0 MyNat.add_succ

/-- For a natural number $a$, $0 + a = a$.-/
Statement (a : MyNat) : 0 + a = a := by
  induction a
  Hint (hidden := false) "We now have two goals: one for the zero case and one for the inductive step. First, let's tidy things up: enter `rewrite [zero_eq_0]` to simplify the active goal."
  rewrite [zero_eq_0] --How can we avoid using this theorem?!
  Hint (hidden := false) "Good. Now we *can* use the theorem `add_zero` to close the current goal."
  rewrite [add_zero]
  rfl
  Hint (hidden := false) "Notice that we have a new assumption: `a_ih`. This is the inductive hypothesis. Use the theorem `add_succ` to rewrite the left-hand side of the goal so that we can use the inductive hypothesis."
  Hint (hidden := true) "Try `rewrite [add_succ]`"
  rewrite [add_succ]
  Hint (hidden := false) "Now use the inductive hypothesis."
  rewrite [a_ih]
  rfl

Conclusion "Excellent work! You now have now completed **Tutorial World**.

Let's move on to our first algebraic structure in **Semigroup World**."
