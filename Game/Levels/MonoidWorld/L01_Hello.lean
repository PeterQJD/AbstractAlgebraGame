import Game.Metadata
import Game.Custom.MyStructure.Definition

World "MonoidWorld"
Level 1
Title "Hello World"

Introduction "
A message shown at the beginning of the level. Use it to explain any new concepts.
"
namespace mymonoid

variable {M : Type} [MyStructure M] -- M for monoid seems fitting.
open MyStructure

/--
This Axiom states that there exists an element $e ∈ G$ which has the following property:
$e * g = g $ for all $g ∈ G$

### Important note
This element $e$ is denoted as $1$ in the editor.
-/
TheoremDoc MyStructure.one_mul as "one_mul" in "Axioms"

/--
This Axiom states that there exists an element $e ∈ G$ which has the following property:
$g * e = g $ for all $g ∈ G$

### Important note
This element $e$ is denoted as $1$ in the editor.
-/
TheoremDoc MyStructure.mul_one as "mul_one" in "Axioms"

/-- The exercise statement in natural language using latex: $\iff$. -/
Statement (a : M) : 1 * a * 1 = a := by
  rewrite [one_mul]
  rewrite [mul_one]
  rfl

Conclusion "
The message shown when the level is completed
"
NewTheorem MyStructure.mul_one MyStructure.one_mul
