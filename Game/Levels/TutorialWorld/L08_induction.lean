import Game.Levels.TutorialWorld.L11_specialize

World "TutorialWorld"
Level 8

Title "The induction tactic."

Introduction "
In the previous level we used the theorem `Nat.add_zero`, which states that for all natural numbers `n`, `n + 0 = n`.

In this level, we will use induction to prove that `0 + n = n`. Note that we **won't** use the fact that addition of natural numbers is commutatative at any point in our proof.

When we want to use induction on a variable `n`, we write `induction n`.

This gives us **two** new goals. The case where `n = 0` and the case where `n = n_1 + 1`.

You can view the two goals by clicking on the Active Goal and the Goal 2 buttons. Notice that `0` appears as `Nat.zero` and `n_1 + 1` appears as `Nat.succ n_1`.

The Active goal is `0 + Nat.zero = 0`, which can be closed using `Nat.add_zero` either by writing `rewrite Nat.add_zero` and then rfl or by writing `exact Nat.add_zero 0`.

Our Active goal is now `0 + Nat.succ n_1 = Nat.succ n_1`. Notice that we have a new assumption `n_ih : 0 + n_1 = n_1`. This is our induction hypothesis.

We want to use `n_in` and we can do so by firsy apply the theorem `Nat.add_succ` with a `rewrite`.

Now we can use the inductive hypothesis with another `rewrite`.

Can you see how to close the goal now?
"
namespace tutorial

Statement (n : ℕ) : 0 + n = n := by
  induction n
  rewrite [Nat.add_zero]
  rfl
  rewrite [Nat.add_succ]
  rewrite [n_ih]
  rfl

Conclusion "Good work!"

NewTactic induction
NewTheorem Nat.add_succ
