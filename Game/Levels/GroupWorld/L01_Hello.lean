import Game.Metadata
import Game.Doc.Theorems
import Game.Custom.MyStructure.Definition
--import Game.Levels.SemigroupWorld.L01_assoc
--import game.Levels.MonoidWorld.L01_Hello

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
This theorem states that for an element $a ∈ G$,
the inverse of the inverse element of a is equal to $a$
-/
TheoremDoc mygroup.inv_inv as "inv_inv" in "Group"

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
TheoremDoc MyStructure.mul_right_inv as "mul_right_inv" in "Axioms"


Statement inv_inv (a : G) : a ⁻¹ ⁻¹ = a := by
  rewrite [← one_mul a⁻¹⁻¹]
  rewrite [← mul_right_inv a]
  rewrite [mul_assoc]
  rewrite [mul_right_inv]
  rewrite [mul_one]
  rfl

Conclusion "This last message appears if the level is solved."

NewTheorem MyStructure.mul_left_inv MyStructure.mul_right_inv mygroup.inv_inv
