import Game.Levels.GroupWorld.L03_inv_inv

World "GroupWorld"

Level 4

Title "
Left identity.
"

Introduction "
In this level you will prove that if $a * b = b$ then $a = e$.

In other words, if an element acts as a left identity, then it is the unqiue identity element.
"

open MySemigroup
open MyMonoid
open MyGroup

variable {G : Type} [inst : MyGroup G]

namespace MyGroup

/--
Let $G$ be a group and let $a, b ∈ G$. If $a * b = b$ then $a = e$.
-/
Statement mul_left_eq_self {a b : G}  (h : a * b = b):  a = e := by
  rewrite [← mul_inv b]
  nth_rewrite 1 [← h]
  rewrite [mul_assoc]
  rewrite [mul_inv]
  rewrite [mul_id]
  rfl

Conclusion "
Excellent work!
"

end MyGroup

NewTheorem MyGroup.mul_left_eq_self
