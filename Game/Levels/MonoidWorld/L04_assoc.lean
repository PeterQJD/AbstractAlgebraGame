import Game.Levels.MonoidWorld.L03_comm


World "MonoidWorld"
Level 4

Title "Abelian monoid"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mymonoid

variable {M : Type} [MyMagma M]

/--
The iverse of a multiple is the multiple of the inverses reversed
-/
TheoremDoc mymonoid.monoid_magma_assoc as "monoid_magma_assoc" in "Monoid"

Statement monoid_magma_assoc {a b c e : M} (h₁ : ∀ x : M, e * x = x)
(h₃ : ∀ (x y z : M), x * (y * z) = (x * z) * y) :
(a * b) * c = a * (b * c) := by
  Hint (hidden := true) "A previous theorem could prove useful"
  nth_rewrite 4 [monoid_magma_comm h₁ h₃]
  symm
  exact h₃ a c b


Conclusion "This last message appears if the level is solved."

NewTheorem mymonoid.monoid_magma_comm
