import Game.Metadata

/--
The `rfl` tactic closes goals of the form `x = x`.
-/
TacticDoc rfl

/--
`rewrite [h]` rewrites the current goal using hypothesis `h`.

Variants of this are `rewrite [h] at g`, which rewrite hypothesis `g` using `h`, and `rewrite [← h]`, which performs a *right to left* rewrite instead of a *left to right* one.
-/
TacticDoc rewrite

/--
`nth_rewrite m [h]` rewrites the mth occurence a variable using hypothesis `h`
-/
TacticDoc nth_rewrite

/--
If the current goal is `h`, where `h` is a hypothesis, then `exact h` will close the goal.
-/
TacticDoc exact

/--
If the goal is of the form `a ~ b` for a symmetric binary relation `~`, then `symm ~` will change the goal to `b ~ a`.
-/
TacticDoc symm

/--
If the goal is a for all statement, e.g., `∀ (n : ℕ) p(n)` then `intro n` will introduce a new variable `n` and the goal becomes `p(n)`.
-/
TacticDoc intro

/--
If `h` is the hypothesis `p → q` then `apply h` will transform the goal from `q` to `p`.
-/
TacticDoc apply

/--
The `specialiaze` tactic allows you use a particular instance of a for all statement.

If `h` is the hypothesis `∀ x, p(x)` then `specialize h a` with transform `h` to `p(a)`.
-/
TacticDoc specialize

/--
`constructor` splits a goal of the form `p ∧ q` into two new goals, one for `p` and one for `q`.
-/
TacticDoc constructor

/--
`rcases h` splits a hypothesis `h: p ∧ q` into two new hypotheses, one for `p`, labelled **left**, and one for `q`, labelled **right**.
-/
TacticDoc rcases

/--
The `induction` tactic allows you to perform induction on a variable.

The tactic will introduce two new goals and a new (inductive) hypothesis.
-/
TacticDoc induction
