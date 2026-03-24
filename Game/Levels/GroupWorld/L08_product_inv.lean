import Game.Levels.GroupWorld.L07_inv_eq_of_mul_eq_one


World "GroupWorld"
Level 8

Title "Product Inverse"

Introduction "In this level you will show that given a group $G$ and $a, b ∈ G$ then
$(a * b)⁻¹ = b⁻¹ * a⁻¹$. This result will prove useful in upcoming levels
"

namespace MyGroup

variable {G : Type} [MyGroup G]

open MyGroup

Statement product_inv {a b : G}: (a * b)⁻¹ = b⁻¹ * a⁻¹ := by
  Hint "Applying a previous proven result might be the way to go"
  Branch
    apply inv_eq_of_mul_eq_one
    rewrite [mul_assoc]
    rewrite [← mul_assoc b]
    rewrite [mul_right_inv]
    rewrite [one_mul]
    rewrite [mul_right_inv]
    rfl

  apply eq_mul_inv_of_mul_eq
  apply eq_inv_of_mul_eq_one
  rewrite [mul_assoc]
  rewrite [← mul_left_inv (a * b)]
  rfl

Conclusion "Well done!"

NewTheorem MyGroup.product_inv
