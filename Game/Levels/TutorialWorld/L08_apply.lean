import Game.Levels.TutorialWorld.L07_intro

World "TutorialWorld"
Level 8

Title "The apply tactic"

Introduction " The apply tactic is used when we have an assumption that is an implication,
if we have a goal g, and a hypothesis h : a → g, then using apply h will change the goal to a,
as if we can prove 'a' then via h we have proved 'g'. "

namespace tutorial

Statement (x y z : Nat) (h₁ : c = 0) (h₂ : c = 0 → a = b): a = b := by
  Branch
    apply h₂
    exact h₁
  apply h₂ at h₁
  exact h₁

Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic apply
