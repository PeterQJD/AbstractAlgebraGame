import Game.Custom.MyNat.Definition

namespace MyNat

opaque add : MyNat → MyNat → MyNat

instance instAdd : Add MyNat where
  add := MyNat.add

axiom add_zero (a : MyNat) : a + 0 = a
axiom add_succ (a b : MyNat) : a + succ (b) = succ (a + b)
