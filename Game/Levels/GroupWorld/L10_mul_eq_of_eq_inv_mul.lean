import Game.Levels.GroupWorld.L09_mul_left_cancel

World "GroupWorld"
Level 10

Title "Multiply on Left"

Introduction "In this level you will show that, given a group $G$ and $a, x, y ∈ G$, assuming $x = a⁻¹ * y$. Then
it follows that $a * b = y$.
"

namespace MyGroup

variable {G : Type} [MyGroup G]

open MyGroup

Statement mul_eq_of_eq_inv_mul (a x y : G) (h : x = a⁻¹ * y) : a * x = y := by
  rewrite [← one_mul x] at h
  Hint (hidden := true) "A previous theorem could prove useful here."
  rewrite [← mul_left_inv a] at h
  rewrite [mul_assoc] at h
  Hint (hidden := true) "A previously proved theorem might be useful here."
  Hint (hidden := true) "Does the form of the statement look like a previous result."
  exact mul_left_cancel a⁻¹ (a * x) y h

Conclusion "Well done!"

NewTheorem MyGroup.mul_left_cancel
