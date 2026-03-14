import Game.Custom.Tactics.LabelAttr

/--The natural numbers. These are used in Tutorial World to demonstrate certain tactics.-/
inductive MyNat where
| zero : MyNat
| succ : MyNat → MyNat

attribute [pp_nodot] MyNat.succ

@[inherit_doc]
notation (name := MyNatNotation) (priority := 1000000) "ℕ" => MyNat
-- Note: as long as we do not import `Mathlib.Init.Data.Nat.Notation` this is fine.

namespace MyNat

instance : Inhabited MyNat where
  default := MyNat.zero

@[MyNat_decide]
def ofNat (x : Nat) : MyNat :=
  match x with
  | Nat.zero    => MyNat.zero
  | Nat.succ b  => MyNat.succ (ofNat b)

@[MyNat_decide]
def toNat (x : MyNat) : Nat :=
  match x with
  | MyNat.zero    => Nat.zero
  | MyNat.succ b  => Nat.succ (toNat b)

instance instOfNat {n : Nat} : OfNat MyNat n where
  ofNat := ofNat n

instance : ToString MyNat where
  toString p := toString (toNat p)

@[MyNat_decide]
theorem zero_eq_0 : MyNat.zero = 0 := rfl

def one : MyNat := MyNat.succ 0

end MyNat
