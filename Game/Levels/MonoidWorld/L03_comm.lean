import Game.Levels.MonoidWorld.L02_Hello


World "MonoidWorld"
Level 3

Title "Abelian monoid"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mymonoid

variable {M : Type} [MyMagma M]

/--
The iverse of a multiple is the multiple of the inverses reversed
-/
TheoremDoc mymonoid.monoid_magma_comm as "monoid_magma_comm" in "Magma"

Statement monoid_magma_comm {a b e : M} (h₁ : ∀ x : M, e * x = x)
(h₂ : ∀ x y z : M, x * (y * z) = (x * z) * y) :
a * b = b * a := by
  nth_rewrite 1 [← h₁ a]
  nth_rewrite 2 [← h₁ b]
  rewrite [← h₂]
  rewrite [h₁, h₁]
  rfl




Conclusion "This last message appears if the level is solved."

NewTactic nth_rewrite
NewTheorem MyMonoid.mul_assoc MyMonoid.one_mul
