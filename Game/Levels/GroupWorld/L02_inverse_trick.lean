import Game.Levels.GroupWorld.L01_strong_inv

World "GroupWorld"
Level 2

Title "← back writing inverses"

Introduction " Now here comes a useful trick that
will help with some of the future exercises."

namespace mygroup

variable {G : Type} [MyStructure G]
open MyStructure


/--This task is designed to show how the idea of a weak inverse trickles down to a group inverse-/
Statement  (a : G) : 1 = a * a⁻¹ := by
  Branch
    rewrite [mul_right_inv]
    Hint "HALT! Instead of using mul_right_inv on the right hand side,
    try rewrite [← mul_right_inv a]"
    rfl

  rewrite [← mul_right_inv a]
  rfl

Conclusion "Nice! This approach will prove useful in future exercises,
which you are now ready to tackle!

Note: the 'a' at the end of '← mul_right_inv a' specifies the element
that constitutes the element * element_inverse pair (which is equal to the identity {1}) "

DisabledTheorem MyStructure.mul_comm
