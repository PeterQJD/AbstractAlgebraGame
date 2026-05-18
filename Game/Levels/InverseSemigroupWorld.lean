import Game.Levels.InverseSemigroupWorld.L01_inverses
import Game.Levels.InverseSemigroupWorld.L02_idempotents

World "InverseSemigroupWorld"

Title "Inverse Semigroup World"

Introduction "Welcome to Inverse Semigroup World!

An inverse semigroup is a semigroup $S$ in which every element has a unique inverse. Since inverse semigroups don't have a distinguished identity element, we have to be careful about what we mean by this.

The first level of this world will introduce the two key axioms: `inv_mul` and `mul_inv1`. After that, we'll start proving some basic facts about inverse semigroups.

Don't forget `mul_assoc`! Inverse semigroups are semigroups afterall and so associativity still holds.
"
