import Game.Custom.MyNat.Definition

namespace MyNat

opaque add : MyNat → MyNat → MyNat

instance instAdd : Add MyNat where
  add := MyNat.add

@[simp, MyNat_decide]
axiom add_zero (a : MyNat) : a + 0 = a

@[MyNat_decide]
axiom add_succ (a b : MyNat) : a + succ (b) = succ (a + b)

end MyNat
