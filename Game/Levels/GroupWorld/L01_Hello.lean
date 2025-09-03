import Game.Metadata
import Game.Doc.Theorems
import Game.Custom.MyStructure.Definition

World "GroupWorld"
Level 1

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This Axiom states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g⁻¹ * g = e$ (where e is the identity element in G)
q
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
TheoremDoc mygroup.mul_right_inv as "mul_right_inv" in "Group"

Statement mul_right_inv (a : G) : a * a⁻¹ = 1 := by
  Hint "You may find that you will need to use all three Axioms!!!"
  Hint "Using 'nth_rewrite' can allow for precision rewriting"
  nth_rewrite 1 [← one_mul a]
  Hint "Try 'nth_rewrite 1 [← mul_left_inv a⁻¹]' "
  nth_rewrite 1 [← mul_left_inv a⁻¹]
  Hint "Try 'rewrite [mul_assoc (a⁻¹⁻¹) a⁻¹ a]' "
  rewrite [mul_assoc (a⁻¹⁻¹) a⁻¹ a]
  Hint "You have got the rest from here!"
  rewrite [mul_left_inv a]
  rewrite [mul_assoc]
  rewrite [one_mul]
  rewrite [mul_left_inv]
  rfl

Conclusion "This last message appears if the level is solved."

DisabledTheorem MyStructure.mul_comm -- disabled commutivity and right inverse for now)
NewTheorem mygroup.mul_right_inv MyStructure.mul_left_inv
