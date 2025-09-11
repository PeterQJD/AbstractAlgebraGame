import Game.Levels.GroupWorld.L10_Hello


World "GroupWorld"
Level 11

Title "FINAL BOSS"

Introduction " In this level you will show that if $∀ x ∈ G, x * x = 1$ where 1 is the identity element

of the group then group G is abelian (commutative).

"
namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.order_of_all_two_abelian as "order_of_all_two_abelian" in "Group"

Statement order_of_all_two_abelian {a b x : G} (h : ∀ x, x * x = 1) : a * b = b * a := by
  nth_rewrite 1 [← mul_one b]
  nth_rewrite 1 [← mul_one a]
  nth_rewrite 1 [← mul_right_inv a]
  nth_rewrite 2 [← mul_assoc]
  nth_rewrite 1 [h, one_mul]
  nth_rewrite 1 [← mul_right_inv b]
  nth_rewrite 2 [← mul_assoc]
  nth_rewrite 1 [h, one_mul]
  rw [← mul_inv]
  apply inv_eq_of_mul_eq_one
  rewrite [h]
  rfl



Conclusion "Well Done."
