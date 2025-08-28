import Game.Levels.TutorialWorld.L02_rw
import Init.Data.List.Basic

World "TutorialWorld"
Level 3

Title "Indopent element"

Introduction "We will now prove a simple result that if $e^{2} = e$ where $e \\in \\N$
then $e^{n} = e$.

This will be the last level of the tutorial world where you will be introduced
to the intro and induction tactics.

intro is used when there is a expression of the form $∀ (x : t), u$ or $t → u$
in the former intro $x$ puts the variable $(x : t)$ into the local context and
makes the new subgoal $u$ in the latter it puts $(h : t)$ in the local context
and makes u the new subgoal.

induction is a tactic that will perform induction on a variable in the local context
so two subgoals will be created one for the base case and one for the succesor of the
genral case.
"
universe u

def ListProd {α : Type u} [Mul α] [OfNat α 1] : List α → α
  | []        => 1
  | x :: xs   => x * power xs


Statement {α : Type} (M : MyCommMagma α) (h₁ : mul e e = e) :
  ∀ n : Nat, power mul e n = e  := by
    intro n

    induction n
    rw [power]

    rw [power]
    rw [h₁]
    rw [n_ih]








Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic intro rw rfl induction
