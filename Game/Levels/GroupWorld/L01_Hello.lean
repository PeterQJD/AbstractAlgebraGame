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
This theorem states that for an element $a ∈ G$,
the inverse of the inverse element of a is equal to $a$
-/
TheoremDoc mygroup.inv_inv as "inv_inv" in "Group"


Statement inv_inv (a : G) : a ⁻¹ ⁻¹ = a := by
  rewrite [← one_mul a⁻¹⁻¹]
  rewrite [← mul_right_inv a]
  rewrite [mul_assoc]
  rewrite [mul_right_inv]
  rewrite [mul_one]
  rfl

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.inv_inv
