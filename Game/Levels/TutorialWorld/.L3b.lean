import Game.Levels.TutorialWorld.L02_HelloWorld

World "TutorialWorld"
Level 3

Title "Indopent element"

Introduction "We will now prove a simple result that if $e^{2} = e where e \\in \\N$
then $e^{n} = e$.
"
universe u

def mul_n_times {α : Type u} (mul : α → α → α) (t : α) (n : Nat) : α :=
  match n with
  | 0     => t
  | n + 1 => mul_n_times mul (mul t t) n

Statement {α : Type} (M : MyMagma α) (h₁ : mul e e = e) :
  ∀ n : Nat, mul_n_times mul e n = e  := by
    intro n

    induction n
    rw [mul_n_times]
    rw [mul_n_times]

    rw [h₁]
    rw [n_ih]





Conclusion "Good Work!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
