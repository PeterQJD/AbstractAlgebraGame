import Game.Metadata
import Game.Custom.MySemigroup.Definition

World "SemigroupWorld"
Level 1
Title "Semigroup World."

Introduction "
Our first example of an algebraic structure is a **semigroup**. A semigroup `S` is a set on which an associative binary operation `*` has been defined.

This means that for all elements `a` and `b` in `S`, the product `a * b` is an element of `S` and for all elements `a, b c` in `S`, the following is true: `(a * b) * c = a * (b * c)`.

We call this the **associative law** and is the only axiom.

Note that Lean will display `(a * b) * c` as `a * b * c`.

Check that the associative rule holds by writing `rewrite [mul_assoc]` followed by a `rfl`.
"
namespace mysemigroup

variable {S : Type} [MySemigroup S]
open MySemigroup -- for easy access to axioms

/--This axiom tells us that multiplication in a semigroup is associative.-/
TheoremDoc MySemigroup.mul_assoc as "mul_assoc" in "Axioms"

Statement (a b c : S) : (a * b) * c = a * (b * c):= by
  rewrite [mul_assoc]
  rfl

Conclusion "
Nice!
"
