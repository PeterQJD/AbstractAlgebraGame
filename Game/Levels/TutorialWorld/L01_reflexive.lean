import GameServer
import Game.Metadata
import Game.Custom.MyNat.Definition
import Game.Custom.MyNat.Addition
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions

World "TutorialWorld"
Level 1

Title "The rfl tactic"

Introduction "
The most basic propositions we need to be able to prove are those of the form `x=x`.

The `rfl` tactic proves such propositions.

Try it out by typing `rfl` in the dialogue box and clicking **Execute** (or hitting enter on your keyboard).
"

NewDefinition MyNat
NewTactic rfl

/--If $x$ is a natural number, then $x = x$.-/
Statement (x : MyNat): x = x := by
  rfl

Conclusion "
Well done!

Before we move on to the next level, let's take a moment to understand what we've just done, as all future levels will look similar to this one.

Under **Objects**, we see `x : ℕ`. This means that `x` is a natural number. The fact that `:` is used instead of the set membership relation `∈` hints that the mathematical foundations upon which Lean is built is not axiomatic set theory, but this isn't something that you need to worry about for now.

The **Goal** is the current state of our proof. In this case, we immediately *closed the goal* by using the `rfl` tactic, but in general we will update the goal using local assumptions or known theorems before closing it and thus completing the proof.
"
