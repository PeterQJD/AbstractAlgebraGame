import Game.Levels.GroupWorld.L05_solving_equations_one


World "GroupWorld"
Level 6

Title "
Left Inverse"

Introduction "
In this level we will prove that if $a * b = e$ then $a = b⁻¹$.

In other words, if $a$ acts as a left inverse of the element $b$, then $a$ is the unique inverse of $b$.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [inst : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group and let $a, b ∈ G$. If $a * b = e$ then $a = b⁻¹$.
-/
Statement eq_inv_of_mul_eq_id {a b : G} (h : a * b = e) : a = b⁻¹ := by
  rewrite [← mul_id a]
  rewrite [← mul_inv b]
  rewrite [← mul_assoc]
  rewrite [h]
  rewrite [id_mul]
  rfl

Conclusion "Well done!"

end MyGroup

NewTheorem MyGroup.eq_inv_of_mul_eq_id
