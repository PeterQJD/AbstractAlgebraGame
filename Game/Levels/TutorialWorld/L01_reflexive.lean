import GameServer
import Game.Metadata
import Game.Doc.Theorems

World "TutorialWorld"
Level 1

Title "The rfl tactic"

Introduction "If $$x$$ is an element of a set then it is certainly the case that $$x = x$$. Lean's `rfl` tactic *proves* this fact.

Try it out by typing `rfl` in the dialogue box and clicking execute.
"
namespace tutorial

Statement (x : Nat): x = x := by
  rfl

Conclusion "Well done!

Before we move on to the next level, let's take a moment to understand what we've just done, as all future levels will look similar to this one.

Under **Objects**, we see `x : ℕ`. This means that `x` is a natural number.

You might wonder why it's not written as `x ∈ ℕ`. We're not going to delve into such details, but if you are particularly curious, then you should read a little bit about Type Theory (which is what Lean is built on).

The **Goal** is the current state of our proof. In this case, we immediately *closed the goal* by using the `rfl` tactic, but in general we will update the goal using local assumptions or known theorems before closing it and completing the proof.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic rfl
