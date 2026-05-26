import Game.Levels.SemigroupWorld
import Game.Levels.InverseSemigroupWorld.L03_inverse_product_idempotent

World "InverseSemigroupWorld"

Level 4

Title "Idempotent Inverse"

Introduction "
This is the final level of Inverse Semigroup World and it's a fairly tricky proof.

In the previous level you proved that $b * x *a$ is an idempotent if $x = (a * b)⁻¹$.

Here, you will show that if $a$ and $b$ are both idempotents, then $b * x * a$ is the inverse of $a * b$.
"

open MySemigroup
open MyInvSemigroup

variable {S : Type} [inst : MyInvSemigroup S]

namespace MyInvSemigroup

/--
Let $S$ be an inverse semigroup and let $a, b ∈ S$ be idempotents. Let $x = (a * b)⁻¹$. Then $b * x * a$ is the inverse of $a * b$.
-/
Statement idempotent_inv (a b x : S) (h : x = (a * b)⁻¹) (ha : Idempotent a) (hb : Idempotent b) : (b * x * a) * a * b * (b * x * a) = b * x * a ∧ (a * b) * (b * x * a) * (a * b) = a * b := by
  constructor
  · nth_rewrite 1 [mul_assoc b]
    rewrite [mul_assoc b]
    rewrite [mul_assoc x]
    rewrite [ha]
    rewrite [mul_assoc]
    nth_rewrite 2 [mul_assoc b]
    nth_rewrite 2 [← mul_assoc b]
    rewrite [hb]
    nth_rewrite 1 [← mul_assoc b]
    nth_rewrite 1 [← mul_assoc b]
    rewrite [inv_prod_idempotent]
    rfl
    exact h
  · nth_rewrite 1 [mul_assoc a]
    rewrite [mul_assoc b]
    rewrite [← mul_assoc b]
    rewrite [hb]
    nth_rewrite 1 [← mul_assoc a]
    rewrite [mul_assoc]
    rewrite [mul_assoc x]
    rewrite [← mul_assoc a]
    rewrite [ha]
    rewrite [← mul_assoc (a * b)]
    rewrite [h]
    rewrite [mul_inv_mul]
    rfl

Conclusion "
Excellent work! You've completed Inverse Semigroup World.

By adding an identity element to an inverse semigroup world, we obtain a group, which is the focus of the next world.
"

end MyInvSemigroup

NewTheorem MyInvSemigroup.idempotent_inv
