import Game.Levels.TutorialWorld.L01_rfl
World "TutorialWorld"
Level 2

Title "Magmas"

Introduction "In this level we introduce the rewrite command rw allows
 you to replace a term in the goal with anoter term it is definitionally equal to.
 It then also applies rfl to the goal if they are equal this will close the goal."

Statement {α : Type} (X Y Z : MyCommMagma α) (h₁ : X = Y) (h₂ : Y = Z) : X = Z := by
  rw [h₁]
  rw [h₂]




Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
