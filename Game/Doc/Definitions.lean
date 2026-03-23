import GameServer.Commands

/--
The natural numbers. These are used in Tutorial World to demonstrate certain tactics.
-/
DefinitionDoc MyNat as "ℕ" in "Tutorial"

-- ~~~ SEMIGROUP DEFINTIONS ~~~

/--
A **semigroup** is a set equipped with an associative binary operation. The binary operation is denoted by `*` and the associativity axiom states that for all elements `a, b, c` in the semigroup, we have `(a * b) * c = a * (b * c)`.
-/
DefinitionDoc MySemigroup as "Semigroup" in "Semigroup"

/--
Let $S$ be a semigroup and let $a ∈ S$. Then $a$ is an **idempotent**
if and only if $a * a = a$.
-/
DefinitionDoc MySemigroup.Idempotent as "Idempotent" in "Semigroup"

/--
A **commutative semigroup** is a semigroup that has a commuatitive binary operation: for all elements `a, b` in the semigroup, we have `a * b = b * a`.
-/
DefinitionDoc MyCommSemigroup as "Commutative Semigroup" in "Semigroup"

-- ~~~ INVERSE SEMIGROUP DEFINITIONS ~~~

/--
An inverse-semigroup $S$, is a semigroup that also has the following property:
for all elements $x ∈ S$, there exists an element $y ∈ S$. Such that  $x * y * x = x ∧ y * x * y = y$
-/
DefinitionDoc MyInverseSemigroup as "Inverse Semigroup" in "Inverse Semigroup"

/--
A weak inverse of an element $x$ in a semigroup $S$ is some $y ∈ S$ such that $x * y * x = x ∧ y * x * y = y$.
-/
DefinitionDoc MyInverseSemigroup.Weak_inverse as "Weak inverse" in "Inverse Semigroup"

/--
Let $S$ be an inverse-semigroup and let $a ∈ S$. Then $a$ is an **idempotent**
if and only if $a * a = a$.
-/
DefinitionDoc MyInverseSemigroup.Idempotent as "Idempotent" in "Inverse Semigroup"

-- ~~~ MONOID DEFNITIONS ~~~

/--
A Monoid is a semigroup with the additional property of having an identity element,
the identity element `e` is such that when applied to any element `a` of the monoid,
we have `e * a = a * e = a`.

The identity element is denoted as `1`. Which can be applied on the left aswell as the right.
-/
DefinitionDoc MyMonoid as "Monoid" in "Monoid"

-- ~~~ GROUP DEFINITIONS ~~~

-- DefinitionDoc MyGroup as "G" "
-- A **Group** is a set \( G \) equipped with an operation \( * \)
-- that satisfies:
--
-- * Associativity: \( (a * b) * c = a * (b * c) \)
-- * Identity: There exists \( e \in G \) such that \( e * a = a * e = a \)
-- * Inverses: For every \( a \in G \), there exists \( a^{-1} \in G \) with \( a * a^{-1} = a^{-1} * a = e \)
--
-- ## Game Notes
--
-- This level introduces you to groups and proofs about them.
-- Use the provided axioms and theorems to navigate the group structure.
-- *Write with `\\G` to refer to the group in your proofs.*
-- "

-- DefinitionDoc mygroup.mul_left_cancel as "mul_left_cancel" "
-- The left cancellation law in a group.
--
-- This theorem states that for all elements \( a, x, y \in G \),
-- if \( a * x = a * y \), then \( x = y \).
--
-- Intuitively, multiplying both sides of an equation on the left by the same element \( a \)
-- preserves equality, and this law lets us \"cancel\" \( a \) from both sides.
--
-- ## Game Notes
--
-- This property is fundamental to groups and is used frequently in proofs.
-- *Write with `\\mul_left_cancel`.*
-- "
