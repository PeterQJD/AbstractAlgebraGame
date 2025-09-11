import Game.Levels.GroupWorld.L08_Hello

World "GroupWorld"
Level 9

Title "← back wri"

Introduction " Now here comes a useful trick that
will help with some of the future exercises."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.mul_eq_of_eq_inv_mul as "mul_eq_of_eq_inv_mul" in "Group"

Statement mul_eq_of_eq_inv_mul (a x y : G) (h : x = a⁻¹ * y) : a * x = y := by
  rw [← one_mul x] at h
  rw [← mul_left_inv a] at h
  rw [mul_assoc] at h
  Hint (hidden := true) "A previously proved theorem might be useful here"
  exact mul_left_cancel a⁻¹ (a * x) y h

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.mul_left_cancel
