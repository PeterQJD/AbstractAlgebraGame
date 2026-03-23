import Game.Metadata

/--
For all natural numbers $a$, $a + 0 = a$.
-/
TheoremDoc MyNat.add_zero as "add_zero" in "Tutorial"

/--
For all natural numbers $a$ and $b$, $a + \text{succ}(b) = \text{succ}(a + b)$.

Here, $\text{succ}$ denotes the successor function. For example, if $b = 3$, then $\text{succ}(3) = 4$.
-/
TheoremDoc MyNat.add_succ as "add_succ" in "Tutorial"

/--
This matches the MyNat zero with the literal 0.
-/
TheoremDoc MyNat.zero_eq_0 as "zero_eq_0" in "Tutorial"

-- ~~~ SEMIGROUP THEOREMS ~~~

/--
Multiplication (i.e., the binary operation) is associative if for all $a, b, c$, we have $(a * b) * c = a * (b * c)$.
-/
TheoremDoc MySemigroup.mul_assoc as "mul_assoc" in "Semigroup"

/--
Multiplication (i.e., the binary operation) is commutative if for all $a, b$, we have $a * b = b * a$.
-/
TheoremDoc MySemigroup.mul_comm as "mul_comm" in "Semigroup"

-- ~~~ MONOID THEOREMS ~~~

/--
This Axiom states that there exists an element $e ∈ G$ which has the following property:
$e * g = g $ for all $g ∈ G$

### Important note
This element $e$ is denoted as $1$ in the editor.
-/
TheoremDoc MyMonoid.one_mul as "one_mul" in "Monoid"

/--
This Axiom states that there exists an element $e ∈ G$ which has the following property:
$g * e = g $ for all $g ∈ G$

### Important note
This element $e$ is denoted as $1$ in the editor.
-/
TheoremDoc MyMonoid.mul_one as "mul_one" in "Monoid"

/--
This result is to illustrate that if there is two elements of a monoid that have the identity property
, then those elements are equal, and hence the identity is unique.
-/
TheoremDoc MyMonoid.id_unique as "id_unique" in "Monoid"

/--
A binary operation of a magma with the following properties...
is associative.
-/
TheoremDoc MyMonoid.monoid_magma_comm as "monoid_magma_comm" in "Monoid"

/--
The binary operation of a magma with the following properties...
is commutative.
-/
TheoremDoc MyMonoid.monoid_magma_assoc as "monoid_magma_assoc" in "Monoid"
