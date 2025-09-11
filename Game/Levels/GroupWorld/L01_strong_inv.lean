import Game.Metadata
import Game.Doc.Theorems
import Game.Custom.MyStructure.Definition
import Game.Levels.InverseSemiGroupWorld.L01_weak_inverse_def

World "GroupWorld"
Level 1

Title " Welcome to Group World"

Introduction " Now that we are working within a group $G$, we have associativity, a unique identity
element and now inverses, but the inverses elements in groups differ from the 'weak' inverses in inverse-semigroups.
in a group, an inverse is characterised by the fact that when applied, it reduces it's corresponding element
to the identity element (something we don't have in inverse-semigroups). inverse elements can be
applied on the left and on the right, represented by the two axioms now unlocked, mul_left_inv and mul_right_inv
respectivley.

This task is designed to show that the idea of a weak_inverse applies to group inverse elements, which
have special notation (group inverses are denoted with the power -1) "

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure myinversesemigroup

/--
This Group Axiom states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g⁻¹ * g = e$ (where e is the identity element in G)

## Important note
This Group Axiom specifiys that the inverse is applied multiplicativly on the LEFT, hence mul_left_inv
-/
TheoremDoc MyStructure.mul_left_inv as "mul_left_inv" in "Group"


/--
This theorem states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g * g^{-1} = e$ (where e is the identity element in G)
q
## Important note
This result will allow us to apply inverses on the RIGHT.
-/
TheoremDoc MyStructure.mul_right_inv as "mul_right_inv" in "Group"

/--Prove that the weak inverse of a is a⁻¹ (a⁻¹ is the the group inverse)-/
Statement  (a : G) : weak_inverse a a⁻¹ := by
  rewrite [weak_inverse_def]
  Hint "type constructor to split the goal into two sub goals, first we solve the lefthand side
  as our active goal, and then the right hand side of the $∧$"
  constructor
  rewrite [mul_right_inv]
  rewrite [one_mul]
  rfl
  rewrite [mul_left_inv]
  rewrite [one_mul]
  rfl

Conclusion "Good Work! Now it should be apparent that the idea of a weak_inverse is
an extension of the idea of a group inverse."

NewHiddenTactic constructor
DisabledTheorem MyStructure.mul_comm
NewTheorem MyStructure.mul_right_inv MyStructure.mul_left_inv
