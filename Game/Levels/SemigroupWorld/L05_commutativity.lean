import Game.Levels.SemigroupWorld.L04_prod_idempotent

World "SemigroupWorld"
Level 5
Title "Commutativity"

Introduction "
Multiplication is commutative if for all `a` and `b` we have `a * b = b * a`.

A **commutative semigroup** is a semigroup that also satisfies the commutativity axiom.

Check that the commutative rule holds by writing `rewrite [mul_comm]` followed by `rfl`.
"
namespace MySemigroup

NewDefinition MyCommSemigroup

NewTheorem MySemigroup.mul_comm

variable {S : Type}

open MySemigroup

/-- Let $S$ be a commutative semigroup. Then $*$ is commutative: $\forall a, b \in S,  a * b = b * a$. -/
Statement (a b c : S) [inst : MySemigroup S]: a * b = b * a := by
  rewrite [mul_comm]
  rfl

Conclusion "Good work. We can now use the `mul_comm` rule to rewrite expressions in a commutative semigroup."

end MySemigroup
