import Game.Levels.GroupWorld.L02_inverse_trick

World "GroupWorld"
Level 3

Title "inverse of an inverse"

Introduction "Now considering the previous two levels, recall
that to write an inverse element it requires a forward-slash -1 next to the element.

Now here is your first proper exercise! prove that the inverse of the inverse of {a} is equal to {a}"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure


/--
This theorem states that for an element $a ∈ G$,
the inverse of the inverse element of a is equal to $a$
-/
TheoremDoc mygroup.inv_inv as "inv_inv" in "Group"


Statement inv_inv (a : G) : a ⁻¹ ⁻¹ = a := by
  Hint (hidden := true) "Try introducing the identity with ← backwriting, specifing a⁻¹⁻¹"
  rewrite [← one_mul a⁻¹⁻¹]
  Hint (hidden := true) "Try using a similar approach from the last level with 'a'."
  rewrite [← mul_right_inv a]
  rewrite [mul_assoc]
  rewrite [mul_right_inv]
  rewrite [mul_one]
  rfl

Conclusion "Great stuff!"

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.inv_inv
