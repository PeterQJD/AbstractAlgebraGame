import Game.Levels.TutorialWorld.L01_reflexive
import Game.Levels.TutorialWorld.L02_rewrite
import Game.Levels.TutorialWorld.L03_nth_rewrite
import Game.Levels.TutorialWorld.L04_exact
import Game.Levels.TutorialWorld.L05_theorems

World "TutorialWorld"
Title "Tutorial World"

Introduction "
The individual syntax that we're going to learn in this tutorial are all examples of what are called **tactics** in Lean.

Tactics are used to write proofs of theorems. You can think of the finished proof as a programme. If Lean accepts the programme without any errors, then we can be very sure that our proof of the theorem is correct. This, in short, is what formalising mathematics is all about.

Many of the tactics used in Lean are based on very familiar mathematical concepts (like induction) while others have been introduced to simplify and speeed up the writing process in Lean.

Let's dive in!
"
