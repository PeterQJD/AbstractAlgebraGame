import Game.Levels.TutorialWorld.L03_rewrite

World "TutorialWorld"
Level 4

Title "The rewrite tactic"

Introduction " Now that rewrite has been covered, it will be helpful to touch on a helpful version of it.
'nth_rewrite' allows for you to specifiy where in the expression you want the substitution to take place.
considering 'n' variables in an expression are indexed from 1 to n.

for example if we have hypothesis h : a = b, and our goal is a * a * a = a * b * a
a quick way is to use nth_rewrite 2 [h], as going left to right the middle a is at index 2.

now you could just use rewrite [h] multiple times and then rfl, but with more complicated
expressions, the precision of nth_rewrite is very handy.
"

namespace tutorial

Statement (a b c : Nat) (h : a = b): a * a * c = b * a * c  := by
  Hint "remember to specify the index in the nth_rewrite"
  nth_rewrite 1 [h]
  rfl

Conclusion "Well done!

You might be thinking why we bothered to perform a second rewrite when our goal was exactly the assumption `h₂`.

The next level will show you how we can use assumptions to close the goal.
"

/- Use these commands to add items to the game's inventory. -/

NewTactic nth_rewrite
