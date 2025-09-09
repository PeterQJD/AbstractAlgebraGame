import Game.Levels.TutorialWorld.L01_reflexive
import Game.Levels.TutorialWorld.L02_symmetry
import Game.Levels.TutorialWorld.L03_rewrite
import Game.Levels.TutorialWorld.L04_exact
import Game.Levels.TutorialWorld.L05_forall
import Game.Levels.TutorialWorld.L06_specialize
import Game.Levels.TutorialWorld.L07_intro
import Game.Levels.TutorialWorld.L08_induction


World "TutorialWorld"
Title "Tutorial World"

Introduction "
In this game we will learn how to prove basic facts about different algebraic structures.

These facts (and the game itself) are written in a programming language called Lean. This language is special because it can be used as a **formal proof assistant**.

This means that it accepts precise mathematical statements and it will tell you if a proof of such a statement is correct.

One way we can construct proofs in Lean is by using **tactics**.

In the first world of our game, we will learn how to use some of these tactics.

Let's dive in!
"
