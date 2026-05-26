import Game.Levels.GroupWorld.L02_trick

World "GroupWorld"
Level 3

Title "
The inverse of an inverse.
"

Introduction "
The goal of this level is to prove that for all $a ∈ G$ in a group $G$, $(a⁻¹)⁻¹ = a$.

Remember that to input $⁻¹$ you type backslash followed by -1.

The tricks introduced in the previous level will help!
"

open MySemigroup
open MyMonoid
open MyGroup

namespace MyGroup

variable {G : Type} [inst : MyGroup G]

/--
Let $G$ be a group and let $a$. Then $(a⁻¹)⁻¹ = a.
-/
Statement inv_inv (a : G) : a ⁻¹ ⁻¹ = a := by
  rewrite [← id_mul a⁻¹⁻¹]
  rewrite [← mul_inv a]
  rewrite [mul_assoc]
  rewrite [mul_inv]
  rewrite [mul_id]
  rfl

Conclusion "Well done, you have proved your first theorem in group world!"

end MyGroup

NewTheorem MyGroup.inv_inv
