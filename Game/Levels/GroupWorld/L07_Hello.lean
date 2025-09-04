import Game.Levels.GroupWorld.L06_Hello


World "GroupWorld"
Level 7

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.product_inv as "product_inv" in "Group"

Statement product_inv {a b : G}: (a * b)⁻¹ = b⁻¹ * a⁻¹ := by
  Hint "Applying a previous proven result might be the way to go"
  apply inv_eq_of_mul_eq_one
  rewrite [mul_assoc]
  rewrite [← mul_assoc b]
  rewrite [mul_right_inv]
  rewrite [one_mul]
  rewrite [mul_right_inv]
  rfl


Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.product_inv

end mygroup
