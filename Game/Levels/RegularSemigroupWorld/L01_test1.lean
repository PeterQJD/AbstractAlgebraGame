import Game.Metadata
import Game.Custom.MyStructures.Definitions
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions


World "RegularSemigroupWorld"
Level 1
Title "Inverses"

Introduction "
If $R$ is a regular semigroup then for all $a ∈ R$, there exists $b ∈ R$ such that $a * b * a = b$ and $b * a * b = b$. In the axioms of a regular semigroup, the first of these identities is called `mul_inv_mul` and the second is called `inv_mul_inv`.

In this level we introduce the definition `IsInverse` : `IsInverse a b` is equivalent to the statement `a * b * a = a ∧ b * a * b = b`.
"

open MyRegSemigroup

NewDefinition MyRegSemigroup MyRegSemigroup.IsInverse

NewTheorem MyRegSemigroup.mul_inv_mul MyRegSemigroup.inv_mul_inv

variable {R : Type} [inst : MyRegSemigroup R]

/-- Plain text. -/
Statement (a b : R) (h1 : a * b * a = a) (h2 : b * a * b = b) : IsInverse a b := by
  rewrite [IsInverse]
  constructor
  exact h1
  exact h2

Conclusion "Great! If `IsInverse` is given as a hypothesis then you can use the `rcases` tactic on the hypothesis (after rewritining the defintion of `IsInverse` to get the `∧` statement.)"
