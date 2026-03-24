import Game.Levels.GroupWorld.L05_eq_mul_inv_of_mul_eq


World "GroupWorld"
Level 6

Title "The identity and inverses"

Introduction "Another result that will be required is that if you have a group $G$
and $a, b ∈ G$ with $a * b = 1$ then $a$ must be the inverse of $b$
"

namespace MyGroup

variable {G : Type} [MyGroup G]

open MyGroup

Statement eq_inv_of_mul_eq_one {a b : G} (h : a * b = 1) : a = b⁻¹ := by
  rewrite [← mul_one a]
  rewrite [← mul_right_inv b]
  rewrite [← mul_assoc]
  rewrite [h]
  rewrite [one_mul]
  rfl

Conclusion "Well done!"

NewTheorem MyGroup.eq_inv_of_mul_eq_one
