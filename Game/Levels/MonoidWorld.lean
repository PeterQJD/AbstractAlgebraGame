import Game.Levels.MonoidWorld.L01_identities
import Game.Levels.MonoidWorld.L02_id_id
import Game.Levels.MonoidWorld.L03_id_unique
import Game.Levels.MonoidWorld.L04_partial_inv
import Game.Levels.MonoidWorld.L05_commutativity
import Game.Levels.MonoidWorld.L06_comm_from_assoc

World "MonoidWorld"

Title "Monoid World"

Introduction "Welcome to **Monoid World**!

A monoid $M$ is a semigroup with a distinguished element $e$ that has the property that $∀ a ∈ M,
e * a = a = a * e$. We call this element an **identity element**. Note that it is common to denote
such elements by $1$.

Since all monoids are semigroups we know that the binary operation is associative and so we can use
`mul_assoc` whenever we wish.
"
