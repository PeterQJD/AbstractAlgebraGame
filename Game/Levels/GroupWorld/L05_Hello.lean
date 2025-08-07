import Game.Metadata
import Game.CustomStructure.MyGroup


World "GroupWorld"
Level 1

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variables {G : Type} [MyGroup G]
open MyGroup

Statement id_unique {e : G} (h : ∀ a : G, e * a = a) : e = 1 := by
  have h1 : e * 1 = 1 := by rw[h]
  rw [mul_one] at h1
  exact h1

Conclusion "This last message appears if the level is solved."

/- Use these commands to add items to the game's inventory. -/

NewTactic id_unique
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
