import Game.Levels.GroupWorld.L04_Hello


World "GroupWorld"
Level 5

Title " Welcome to Group World"

Introduction "This text is shown as first message when the level is played.
You can insert hints in the proof below. They will appear in this side panel
depending on the proof a user provides."

namespace mygroup

variable {G : Type} [MyGroup G]
open MyGroup

/--
This is some sample documentation - (test)
-/
TheoremDoc mygroup.id_unique as "id_unique" in "Group"

Statement id_unique {e : G} (h : ∀ a : G, e * a = a) : e = 1 := by
  have h1 : e * 1 = 1 := by rw[h]
  rw [mul_one] at h1
  exact h1

Conclusion "This last message appears if the level is solved."

NewTheorem mygroup.id_unique
