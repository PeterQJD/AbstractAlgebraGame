import Game.Metadata
import Game.Custom.MyGroup.Definition
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions
import Game.Levels.InverseSemiGroupWorld.L01_weak_inverse_def

World "GroupWorld"
Level 1

Title " Welcome to Group World"

Introduction " Now that we are working within a group $G$, we have associativity, a unique identity
element and now inverses, but the inverses elements in groups differ from the 'weak' inverses in inverse-semigroups.
in a group, an inverse is characterised by the fact that when applied, it reduces it's corresponding element
to the identity element (something we don't have in inverse-semigroups). inverse elements can be
applied on the left and on the right, represented by the two axioms now unlocked, mul_left_inv and mul_right_inv
respectivley.

This task is designed to show that the idea of a weak_inverse applies to group inverse elements, which
have special notation (group inverses are denoted with the power -1) "

namespace MyGroup

NewTheorem MyGroup.mul_right_inv MyGroup.mul_left_inv

variable {G : Type} [MyGroup G]

open MyGroup myinversesemigroup


/--Prove that the weak inverse of a is a⁻¹ (a⁻¹ is the the group inverse)-/
Statement  (a : G) : weak_inverse a a⁻¹ := by
  rewrite [weak_inverse_def]
  Hint "type constructor to split the goal into two sub goals, first we solve the lefthand side
  as our active goal, and then the right hand side of the $∧$"
  constructor
  rewrite [mul_right_inv]
  rewrite [one_mul]
  rfl
  rewrite [mul_left_inv]
  rewrite [one_mul]
  rfl

Conclusion "Good Work! Now it should be apparent that the idea of a weak_inverse is
an extension of the idea of a group inverse."

NewHiddenTactic constructor
