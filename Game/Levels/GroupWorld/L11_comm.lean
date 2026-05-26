import Game.Levels.GroupWorld.L10_solving_equations_two

World "GroupWorld"

Level 11

Title "Commutativity"

Introduction "
In this, the final level of Group World, you will prove that if, for all $x ∈ G$, $x ^ 2 = e$ then $G$ is a commutative group.
"

open MySemigroup
open MyMonoid
open MyGroup

NewDefinition MyCommGroup

variable {G : Type} [inst : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group. If, for all $x ∈ G$, $x ^ 2 = e$ then $G$ is a commutative group.
-/
Statement mul_comm_of_sq_eq_one {a b : G} (h : ∀ x : G, x * x = e) : a * b = b * a := by
  nth_rewrite 1 [← mul_id b]
  nth_rewrite 1 [← mul_id a]
  nth_rewrite 1 [← mul_inv a]
  nth_rewrite 2 [← mul_assoc]
  nth_rewrite 1 [h, id_mul]
  nth_rewrite 1 [← mul_inv b]
  nth_rewrite 2 [← mul_assoc]
  nth_rewrite 1 [h, id_mul]
  rewrite [← product_inv]
  symm
  apply inv_eq_of_mul_eq_id
  rewrite [h]
  rfl

Conclusion "
Well done!
"

end MyGroup

NewTheorem MyGroup.mul_comm_of_sq_eq_one
