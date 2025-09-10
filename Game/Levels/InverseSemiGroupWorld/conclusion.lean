import Game.Metadata
import Game.Custom.MyStructure.Definition


World "InverseSemiGroupWorld"
Level 1
Title "Hello World"

Introduction "
Now that we are working with an Inverse Semigroup, we have both associativity
and the existance of inverse elements for every element in the set. This
Exercise is just to introduce the how we can use inverses in proofs.

This can be done with the two new axioms you have unlocked,
mul_left_inv and mul_right_inv. Click on them in the Axioms tab to get
the details of what they do.
"

namespace myinversesemigroup

variable {ISG : Type} [MyStructure ISG]
open MyStructure

/--An inverse of an element x in a semigroup S is some y ∈ S such that:-/
def MyStructure.weak_inverse {S : Type u} [MyStructure S] (x y : S) : Prop :=
x * y * x = x ∧ y * x * y = y

/--
This Axiom states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g⁻¹ * g = e$ (where e is the identity element in G)

## Important note
This axiom specifiys that the inverse is applied multiplicativly on the LEFT, hence mul_left_inv
-/
TheoremDoc MyStructure.mul_left_inv as "mul_left_inv" in "Axioms"


/--
This theorem states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g * g^{-1} = e$ (where e is the identity element in G)
q
## Important note
This result will allow us to apply inverses on the right as well as the left.
-/
TheoremDoc MyStructure.mul_right_inv as "mul_right_inv" in "Axioms"



/-- This statement states that the weak inverse of x is y, if and only if -/
Statement weak_inverse_def (x y : ISG) : weak_inverse x y ↔ x * y * x = x ∧ y * x * y = y  := by
  rfl

Conclusion "
The message shown when the level is completed
"

NewTheorem  MyStructure.mul_left_inv MyStructure.mul_right_inv
