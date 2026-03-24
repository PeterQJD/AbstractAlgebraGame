import Game.Levels.GroupWorld.L01_strong_inv

World "GroupWorld"
Level 2

Title "identity is equal to element multiplied by inverse"

Introduction " Now here comes a useful trick that
will help with some of the future exercises."

namespace MyGroup

variable {G : Type} [MyGroup G]

open MyGroup


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
