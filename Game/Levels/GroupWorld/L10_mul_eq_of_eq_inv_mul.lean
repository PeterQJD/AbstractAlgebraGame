import Game.Levels.GroupWorld.L09_mul_left_cancel

World "GroupWorld"
Level 10

Title "Multiply on Left"

Introduction "Here you will show that given a group $G$ and $a, x, y ∈ G$ assuming $x = a^{-1} * y$ then
you know $a * b = y$.
"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.mul_eq_of_eq_inv_mul as "mul_eq_of_eq_inv_mul" in "Group"

Statement mul_eq_of_eq_inv_mul (a x y : G) (h : x = a⁻¹ * y) : a * x = y := by
  rw [← one_mul x] at h
  Hint (hidden := true) "A previous theorem could prove useful here."
  rw [← mul_left_inv a] at h
  rw [mul_assoc] at h
  Hint (hidden := true) "A previously proved theorem might be useful here."
  Hint (hidden := true) "Does the form of the statement look like a previous result."
  exact mul_left_cancel a⁻¹ (a * x) y h

Conclusion "Well done!"

NewTheorem mygroup.mul_left_cancel
