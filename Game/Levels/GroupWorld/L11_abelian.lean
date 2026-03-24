import Game.Levels.GroupWorld.L10_mul_eq_of_eq_inv_mul


World "GroupWorld"
Level 11

Title "FINAL BOSS - Order and Abelian Groups"

Introduction " In this level you will show that if $∀ x ∈ G, x * x = 1$ where 1 is the identity element
of the group then group G is abelian (commutative).
"
namespace MyGroup

variable {G : Type} [MyGroup G]
open MyGroup

Statement order_of_all_two_abelian {a b : G} (h : ∀ x : G, x * x = 1) : a * b = b * a := by
  Hint (hidden := true) "nth_rewrites could be useful to keep things clean"
  Hint (hidden := true) "Remember your group axioms."
  nth_rewrite 1 [← mul_one b]
  nth_rewrite 1 [← mul_one a]
  Hint (hidden := true) "You might want to look at previous results."
  nth_rewrite 1 [← mul_right_inv a]
  nth_rewrite 2 [← mul_assoc]
  nth_rewrite 1 [h, one_mul]
  nth_rewrite 1 [← mul_right_inv b]
  nth_rewrite 2 [← mul_assoc]
  nth_rewrite 1 [h, one_mul]
  Hint (hidden := true) "A previous result could be useful here"
  rewrite [← product_inv]
  Hint (hidden := true) "Does the statements form look familiar to a previous result?"
  apply inv_eq_of_mul_eq_one
  rewrite [h]
  rfl

Conclusion "Well done!"
