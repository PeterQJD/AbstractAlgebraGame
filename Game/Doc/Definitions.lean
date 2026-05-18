import GameServer.Commands

/--
The natural numbers. These are used in Tutorial World to demonstrate certain tactics.
-/
DefinitionDoc MyNat as "ℕ" in "Tutorial"

-- SEMIGROUP DEFINTIONS

/--
A **semigroup** is a set $S$ equipped with an associative binary operation. The binary operation is denoted by $*$ and the associativity axiom states that for all elements $a, b, c ∈ S$, $(a * b) * c = a * (b * c)$.
-/
DefinitionDoc MySemigroup as "Semigroup" in "Semigroup"

/--
Let $S$ be a semigroup and let $a ∈ S$. Then $a$ is an **idempotent**
if and only if $a * a = a$.
-/
DefinitionDoc MySemigroup.Idempotent as "Idempotent" in "Semigroup"

/--
A **commutative semigroup** is a semigroup $S$ that has a commuatitive binary operation: for all elements $a, b ∈ S$, $a * b = b * a$.
-/
DefinitionDoc MyCommSemigroup as "Commutative Semigroup" in "Semigroup"

-- INVERSE SEMIGROUP DEFINITIONS

/--
An **inverse semigroup** is a semigroup $S$ that has the property that for all $a ∈ S$, there exists a unique element $a⁻¹ ∈ S$ such that  $a * a⁻¹ * a = a$ and $a⁻¹ * a * a⁻¹ = a⁻¹$.
-/
DefinitionDoc MyInverseSemigroup as "Inverse Semigroup" in "Inverse Semigroup"

/--
A **weak inverse** of an element $x$ in a semigroup $S$ is some $y ∈ S$ such that $x * y * x = x ∧ y * x * y = y$.
-/
DefinitionDoc MyInverseSemigroup.Weak_inverse as "Weak inverse" in "Inverse Semigroup"

-- MONOID DEFNITIONS

/--
A **monoid** $M$ is a semigroup with the additional property of having an **identity element**. An identity element $e ∈ M$ is such that for all $a ∈ M$, $e * a = a$ and $a * e = a$.
-/
DefinitionDoc MyMonoid as "Monoid" in "Monoid"

/--
A **commutative monoid** is a monoid $M$ that has a commuatitive binary operation: for all elements $a, b ∈ M$, $a * b = b * a$.
-/
DefinitionDoc MyCommMonoid as "Commutative Monoid" in "Monoid"

-- GROUP DEFINITIONS

/--
A **Group** is a set \( G \) equipped with an operation \( * \)
that satisfies:

Associativity: \( $(a * b) * c = a * (b * c)$ \)
Identity: There exists \( $e \in G$ \) such that \( $e * a = a * e = a$ \)
Inverses: For every \( $a \in G$ \), there exists \( $a⁻¹ \in G$ \) with \( $a * a⁻¹ = a⁻¹ * a = e$ \)

-/
DefinitionDoc MyGroup as "Group" in "Group"

/--
A **weak inverse** of an element $x$ in a group $G$ is some $y ∈ G$ such that $x * y * x = x ∧ y * x * y = y$.

The major difference between this notion of weak inverse, and the group inverse.
Recall that an inverse semigroup does not contain an identity element.
For the element $a ∈ G$,
 its group inverse $a⁻¹$ is characterised by the fact that when it acts on $a$, it reduces $a$ to the identity.
An inverse semigroup has no identity element, hence it has a different, more general notion of inverse.
-/
DefinitionDoc MyGroup.Weak_inverse as "Weak inverse" in "Group"
