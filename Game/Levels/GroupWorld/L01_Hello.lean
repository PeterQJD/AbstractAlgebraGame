import Game.Metadata
import Game.CustomStructure.MyGroup


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
This is some sample documentation - (test)
-/
TheoremDoc mygroup.mul_left_cancel as "mul_left_cancel" in "Mul"
/--
Associativity is cool!
-/
TheoremDoc mul_assoc as "mul_assoc" in "Group Axioms"
/--
Inverses are cool!
-/
TheoremDoc mul_left_inv as "mul_left_inv" in "Group Axioms"
/--
Identitys are cool!
-/
TheoremDoc one_mul as "one_mul" in "Group Axioms"


Statement mul_left_cancel (a x y : G) (h : a * x = a * y) : x = y := by
  Hint "You will need to use all 3 Group Axioms!"
  have h1 : a⁻¹ * (a * x) = a⁻¹ * (a * y) := by rw [h]
  rw [← mul_assoc] at h1
  rw [mul_left_inv] at h1
  rw [one_mul] at h1
  rw [← mul_assoc,mul_left_inv, one_mul] at h1
  exact h1


Conclusion "This last message appears if the level is solved."

end mygroup
