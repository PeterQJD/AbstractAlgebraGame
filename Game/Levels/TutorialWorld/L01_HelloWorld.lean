import GameServer
import Game.Metadata
import Game.Doc.Theorems
import Game.Custom.MyMagma.Definition

World "TutorialWorld"
Level 1

Title "Magmas"

Introduction "To start we will be giving names to many
structures you will have met before. The most basic of these
 is the magma which consists of a set with a binary operation on it.
 An example of this is the natural numbers and addition $(\\N, +)$. In this
 world you will be shown the basics of how to use leaa and some of the most
 important commands that you will need in order to progress in later stages.

 In this level we introduce the rewrite and rfl commands rewrite allows
 you to replace a term in the goal with anoter term it is definitionally equal to.
 Say magma₁ := $(\\N, +)$ and magma₂ := $(\\N, +)$ prove they are equal. Using reflection."

def magma₁ : MyCommMagma Nat :=
  {
    mul       := Nat.add
    mul_comm  := Nat.add_comm
  }

def magma₂ : MyCommMagma Nat :=
  {
    mul       := Nat.add
    mul_comm  := Nat.add_comm
  }

Statement : magma₁ = magma₂ := by
  Hint "They are definitionally equal."
  rfl






Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
