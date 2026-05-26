import Game.Levels.GroupWorld.L07_right_inverse

World "GroupWorld"

Level 8

Title "Product Inverse"

Introduction "
In this level you will prove that the inverse of a product of two group elements is the reverse product of their inverses.

You will be familiar with this result in the context of matrix multiplication and composition of inverses.

Some of the theorems proved in the previous levels will help you to close the goal.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [inst : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group and let $a, b ∈ G$. Then $(a * b)⁻¹ = b⁻¹ * a⁻¹$.
-/
Statement product_inv {a b : G} : (a * b)⁻¹ = b⁻¹ * a⁻¹ := by
  apply eq_mul_inv_of_mul_eq
  apply eq_inv_of_mul_eq_id
  rewrite [mul_assoc]
  rewrite [inv_mul (a * b)]
  rfl

Conclusion "
Well done!
"

end MyGroup

NewTheorem MyGroup.product_inv
