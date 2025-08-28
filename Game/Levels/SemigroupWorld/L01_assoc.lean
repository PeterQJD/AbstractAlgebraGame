import Game.Metadata
import Game.Custom.MyStructure.Definition

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

variable {S : Type} [MyStructure S]
open MyStructure -- for easy access to axioms

/--
This Axiom states that our binary operation has the following property:
 $g * (h * k)  = (g * h) * k$ for all $g, h, k ∈ G$.
Then we say that the binary operation * is associative
-/
TheoremDoc MyStructure.mul_assoc as "mul_assoc" in "Axioms"

Statement (a b c : S) : (a * b) * c = a * (b * c):= by
  rewrite [mul_assoc]
  rfl

Conclusion "
Nice!
"
NewTheorem MyStructure.mul_assoc
