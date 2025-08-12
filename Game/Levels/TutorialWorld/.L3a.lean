import Game.Levels.TutorialWorld.L01_HelloWorld

World "TutorialWorld"
Level 3

Title "Equality Transitivity"

Introduction "In the previous levels the proofs were trivial. There isn't much we can do with
just a set and a commutatative binary operation. In this level we will define the operation
as also being associative this gives us a semigroup."

Statement {α : Type} (X Y Z : MyCommMagma α) (h₁ : X = Y) (h₂ : Y = Z) : X = Z := by
  rw [h₁]
  rw [h₂]




Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
