import Game.Metadata
import Game.Custom.MyStructures.Definitions
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions


World "InverseSemigroupWorld"
Level 1
Title "Inverses"

Introduction "
In an inverse semigroup $S$ every element has a unique inverse. This means that for all $a ∈ S$ there exists $a⁻¹ ∈ S$ such that $a * a⁻¹ * a = a$ and $a⁻¹ * a * a⁻¹ = a⁻¹$.

The first of these identities is called `mul_inv_mul` and the second is called `inv_mul_inv`. Together with `mul_assoc` they form the axioms of an inverse semigroup.

Try them out!
"

open MyInvSemigroup

NewDefinition MyInverseSemigroup

NewTheorem MyInvSemigroup.mul_inv_mul MyInvSemigroup.inv_mul_inv

variable {S : Type} [inst : MyInvSemigroup S]

/-- Let $S$ be an inverse semigroup. Then for all $a ∈ S$ there exists a unique inverse $a⁻¹ ∈ S$ such that $a * a⁻¹ * a = a$ and $a⁻¹ * a * a⁻¹ = a⁻¹$ -/
Statement (a : S) : a * a⁻¹ * a = a ∧ a⁻¹ * a * a⁻¹ = a⁻¹ := by
  constructor
  · rewrite [mul_inv_mul]
    rfl
  · rewrite [inv_mul_inv]
    rfl

Conclusion "Good job!"
