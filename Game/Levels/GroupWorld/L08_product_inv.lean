import Game.Levels.GroupWorld.L07_inv_eq_of_mul_eq_one


World "GroupWorld"
Level 8

Title "Product Inverse"

Introduction "In this level you will show that given a group $G$ and $a, b ∈ G$ then
$(a * b)^{-1} = b^{-1} * a^{-1}. This result will prove useful in upcoming levels$
"

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.product_inv as "product_inv" in "Group"

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

DisabledTheorem MyStructure.mul_comm
NewTheorem mygroup.product_inv

end mygroup
