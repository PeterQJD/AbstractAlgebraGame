import Game.Metadata
import Game.Doc.Theorems

World "TutorialWorld"
Level 1

Title "Magmas"

Introduction "To start we will be giving names to many
structures you will have met before. The most basic of these
 is the magma which consists of a set with a binary operation on it.
 An example of this is the natural numbers and addition $(\\N, +)$"

Statement (h : x = 2) (g: y = 4) : x + x = y := by
  Hint "You can either start using `{h}` or `{g}`."
  Branch
    rw [g]
    Hint "You should use `{h}` now."
    rw [h]
  rw [h]
  Hint "You should use `{g}` now."
  rw [g]

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
NewTheorem Nat.add_comm
-- NewDefinition Nat Add Eq
