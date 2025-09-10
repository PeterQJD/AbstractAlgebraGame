import Game.Metadata
import Game.Doc.Theorems
import Game.Custom.MyStructure.Definition

World "GroupWorld"
Level 1

Title " Welcome to Group World"

Introduction " Now that we are working within a group $G$, we have associativity, a unique identity
element and inverses, but the inverses elements in groups differ from the 'weak' inverses in inverse-semigroups.
in a group, an inverse is characterised by the fact that when applied, it reduces it's corresponding element
to the identity element (something we don't have in inverse-semigroups). inverse elements can be
applied on the left and on the right, represented by the two axioms now unlocked, mul_left_inv and mul_right_inv
respectivley. "

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This Group Axiom states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g⁻¹ * g = e$ (where e is the identity element in G)

## Important note
This Group Axiom specifiys that the inverse is applied multiplicativly on the LEFT, hence mul_left_inv
-/
TheoremDoc MyStructure.mul_left_inv as "mul_left_inv" in "Axioms"


/--
This theorem states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g * g^{-1} = e$ (where e is the identity element in G)
q
## Important note
This result will allow us to apply inverses on the RIGHT.
-/
TheoremDoc MyStructure.mul_right_inv as "mul_right_inv" in "Axioms"

/--This task is designed to show how the idea of a weak inverse trickles down to a group inverse-/
Statement  (a : G) : a⁻¹ * a * a⁻¹ = a⁻¹ := by
  Branch
    rewrite [mul_assoc]
    rewrite [mul_right_inv]
    rewrite [mul_one]
    rfl
  rewrite [mul_left_inv]
  rewrite [one_mul]
  rfl



Conclusion "Good Work!"

NewTheorem MyStructure.mul_right_inv MyStructure.mul_left_inv
