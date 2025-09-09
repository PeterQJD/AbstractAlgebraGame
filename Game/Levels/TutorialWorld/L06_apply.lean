import Game.Levels.TutorialWorld.L05_exact

World "TutorialWorld"
Level 6

Title "The apply tactic"

Introduction " The apply tactic is used when we have an assumption that is an implication,
if we have a goal g, and a hypothesis h : a → g, then using apply h will change the goal to a,
as if we can prove 'a' then via h we have proved 'g'. "

namespace tutorial

Statement (x y z : Nat) (h1 : c = 0) (h2 : c = 0 → a = b): a = b := by
  Branch
    apply h2
    exact h1
  apply h2 at h1
  exact h1

Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic apply
