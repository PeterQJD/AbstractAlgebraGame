import Game.Levels.TutorialWorld.L10_induction

World "TutorialWorld"
Level 11

Title "The rcases tactic."

Introduction "
Now 'rcases' is used when your assumption is an AND statement,
when you apply rcases to an hypothesis h with 'rcases h', it
splits the AND statement into the left and right statements either side of the ∧ symbol.
these new hypothesis's are named left and right respectivley, so that you can
use left and right specifically.
"
namespace tutorial

Statement (n m : ℕ) (h : n = m ∧ n > 1 ): n > 1:= by
  Hint "we need the statement on the right side of the ∧,
  use rcases to split the AND statement into it's components"
  rcases h
  exact right

Conclusion "Good work!"

NewTactic rcases
