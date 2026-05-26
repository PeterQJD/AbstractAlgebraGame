import Game.Levels.MonoidWorld.L04_partial_inv

World "MonoidWorld"

Level 5

Title "Commutativity"

Introduction "
Multiplication is commutative if for all $a$ and $b$ we have $a * b = b * a$.

A **commutative monoid** is a monoid that also satisfies the commutativity axiom.

Check that the commutative rule holds by writing `rewrite [mul_comm]` followed by `rfl`.
"

open MyCommMonoid

NewDefinition MyCommMonoid

NewTheorem MyCommMonoid.mul_comm

variable {M : Type} [inst : MyCommMonoid M]

/--
Let $M$ be a commutative monoid. Then $*$ is commutative: $\forall a, b \in M,  a * b = b * a$.
-/
Statement (a b c : M) : a * b = b * a := by
  rewrite [mul_comm]
  rfl

Conclusion "
Good work. We can now use the `mul_comm` rule to rewrite expressions in a commutative monoid.
"
