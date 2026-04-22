import Game.Levels.MonoidWorld.L01_identities
import Game.Levels.MonoidWorld.L02_id_unique
import Game.Levels.MonoidWorld.L03_comm
import Game.Levels.MonoidWorld.L04_assoc


World "MonoidWorld"

Title "Monoid World"

Introduction "Welcome to **Monoid World**!

A monoid `M` is a semigroup with a distinguished element `1` that has the property that `∀ a ∈ M,
1 * a = a = a * 1`. We call this element an **identity element**. Note that it is common to denote
such elements by `e`.

Since all monoids are semigroups we know that the binary operation is associative and so we can use
`mul_assoc` whener we wish.
"
