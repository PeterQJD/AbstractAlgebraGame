import GameServer
import Game.Metadata
import Game.Doc.Theorems
import Game.Custom.MyGroup.Definition


World "GroupWorld"
Level 1

Title " Welcome to Group World - Getting to grips with the axioms"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyGroup G]
open MyGroup -- for easy access to axioms

/--
This result states that for elements $a, x, y ∈ G $, if a * x = a * y then x = y.
-/
TheoremDoc mygroup.mul_left_cancel as "mul_left_cancel" in "Group"
/--
This Axiom states that our binary operation has the following property:
 $g * (h * k)  = (g * h) * k$ for all $g, h, k ∈ G$.
Then we say that the binary operation * is associative
-/
TheoremDoc MyGroup.mul_assoc as "mul_assoc" in "Axioms"
/--
This Axiom states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g⁻¹ * g = e$ (where e is the identity element in G)

## Important note
This axiom specifiys that the inverse is applied multiplicativly on the LEFT, hence mul_left_inv
-/
TheoremDoc MyGroup.mul_left_inv as "mul_left_inv" in "Axioms"
/--
This Axiom states that there exists an element $e ∈ G$ which has the following property:
$e * g = g $ for all $g ∈ G$

## Important note
This element $e$ is denoted as $1$ in the editor
-/
TheoremDoc MyGroup.one_mul as "one_mul" in "Axioms"


Statement mul_left_cancel (a x y : G) (h : a * x = a * y) : x = y := by
  Hint "You will need to use all 3 Group Axioms!"
  have h1 : a⁻¹ * (a * x) = a⁻¹ * (a * y) := by rw [h]
  rw [← mul_assoc] at h1
  rw [mul_left_inv] at h1
  rw [one_mul] at h1
  rw [← mul_assoc,mul_left_inv, one_mul] at h1
  exact h1


Conclusion "This last message appears if the level is solved."

-- new theorem can only be used once per level but takes multiple arguments.
-- only temporary as axioms should be added to inventory in earlier worlds
NewTheorem mygroup.mul_left_cancel MyGroup.mul_left_inv MyGroup.mul_assoc MyGroup.one_mul

end mygroup
