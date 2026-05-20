import Game.Levels.SemigroupWorld
import Game.Levels.InverseSemigroupWorld.L03_inverse_product_idempotent

World "InverseSemigroupWorld"
Level 4
Title "Idempotent Inverse"

Introduction "
The next helper theorem states that if $a, b ∈ S$ are idempotents then $b * x * a$ is the inverse of $a * b$ where $x = (a * b)⁻¹$.
"

open MySemigroup
open MyInvSemigroup

variable {S : Type} [inst : MyInvSemigroup S]

namespace MyInvSemigroup

/-- Let $S$ be an inverse semigroup and let $a, b ∈ S$ be idempotents. Let $x = (a * b)⁻¹$. Then $b * x * a$ is the inverse of $a * b$. -/
Statement idem_inv (a b x : S) (h : x = (a * b)⁻¹) (ha : Idempotent a) (hb : Idempotent b) : (b * x * a) * a * b * (b * x * a) = b * x * a ∧ (a * b) * (b * x * a) * (a * b) = a * b := by
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

Conclusion "Good job!"

end MyInvSemigroup

NewTheorem MyInvSemigroup.inv_prod_idempotent
