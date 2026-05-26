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
Let $S$ be a semigroup and let $a ∈ S$. Then $a$ is an **idempotent** if $a * a = a$.
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
A **commutative monoid** is a monoid $M$ that has a commutative binary operation: for all elements $a, b ∈ M$, $a * b = b * a$.
-/
DefinitionDoc MyCommMonoid as "Commutative Monoid" in "Monoid"

-- GROUP DEFINITIONS

/--
A **group** $G$ is a monoid in which every element has a unique inverse: for all $a ∈ G$, $a * a⁻¹ = e$ and $a⁻¹ * a = e$.

-/
DefinitionDoc MyGroup as "Group" in "Group"

/--
A **commutative group** is a group $G$ that has a commutative binary operation: for all elements $a, b ∈ G$, $a * b = b * a$.
-/
DefinitionDoc MyCommGroup as "Commutative Group" in "Group"
