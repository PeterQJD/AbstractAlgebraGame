import Game.Levels.TutorialWorld.L03_backrewrite

World "TutorialWorld"
Level 4

Title "The symmetry tactic."

Introduction "
In the previous level we learnt how to use induction, now we are going to learna comparatively simpler tactic,
applying symmetry with 'symm' to an equation simply flips it the other way round.

 This can be used on the goal with simply 'symm',or applied to a hypothesis 'h' with 'symm at h'. this is useful for helping leans
pattern matching when trying to perform rewrites.
"

namespace tutorial

Statement (n m : ℕ) (h : n = m): m = n := by
  symm
  exact h

Conclusion "Good work!"

NewTactic symm
