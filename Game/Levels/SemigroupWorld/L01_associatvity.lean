import Game.Metadata
import Game.Custom.MySemigroup.Definitions
import Game.Doc.Theorems
import Game.Doc.Tactics
import Game.Doc.Definitions

World "SemigroupWorld"
Level 1
Title "Associativity"

Introduction "
A binary operation is **associative** if for all `a, b, c`, we have `(a * b) * c = a * (b * c)`.

Note that Lean will display `(a * b) * c` as `a * b * c`.

A **semigroup** is a set together with an associative multiplication.

Check that the associative rule holds by writing `rewrite [mul_assoc]` followed by `rfl`.
"

namespace MySemigroup

NewDefinition MySemigroup

NewTheorem MySemigroup.mul_assoc

variable {S : Type}

open MySemigroup

/-- Let $S$ be a semigroup. Then $*$ is associative: $∀ a, b, c \in S, (a * b) * c = a * (b * c)$ -/
Statement (a b c : S) [inst : MySemigroup S] : (a * b) * c = a * (b * c):= by
  rewrite [mul_assoc]
  rfl

Conclusion "Nice! We now have access to the associative rule."

end MySemigroup
