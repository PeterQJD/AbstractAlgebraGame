import Game.Levels.SemigroupWorld.L01_associatvity
import Game.Levels.SemigroupWorld.L02_using_assoc
import Game.Levels.SemigroupWorld.L03_idempotent
import Game.Levels.SemigroupWorld.L04_prod_idempotent
import Game.Levels.SemigroupWorld.L05_commutativity
import Game.Levels.SemigroupWorld.L06_using_comm
import Game.Levels.SemigroupWorld.L07_idempotent_prod

World "SemigroupWorld"

Title "Semigroup World"

Introduction "Welcome to **Semigroup World**!

A semigroup is an example of an algeraic structure, meaning that we have a set together with some way of multiplying elements of the set together.

Different algebraic structures satisfy different axioms. In the case of a semigroup, the multiplication is associative.
In this world, we will introduce you to the idea of associativity and more.

The more formal way to refer to the multiplication is as a **binary operation**. We will use the terms *binary operation* and *multiplication* interchangeably throughout this game, and both will be donated by `*`. So, `a * b` is the result of multiplying `a` and `b`.

Most of the levels in this world can be completed with the `rewrite` and `rfl` tactics.

You can check the **Theorems**, **Tactics** and **Definitions** tabs at any time for a reminder of everything that has been introduced so far.

New items will be added as you complete levels."
