import Game.Metadata

-- MYNAT THEOREMS

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

-- SEMIGROUP THEOREMS

/--
In a semigroup $S$, multiplication is **associative**: $∀ a, b, c ∈ S$, we have $(a * b) * c = a * (b * c)$.
-/
TheoremDoc MySemigroup.mul_assoc as "mul_assoc" in "Axioms"

/--
In a commutative semigroup $S$, multiplication is **commutative**: $∀ a, b ∈ S$, we have $a * b = b * a$.
-/
TheoremDoc MyCommSemigroup.mul_comm as "mul_comm" in "Axioms"

/--
Let $S$ be a semigroup. For all $a, b, c ∈ S$, $(a * b * c) * (a * b * c) = a * (b * c * a * b) * c$.
-/
TheoremDoc MySemigroup.sq_assoc as "sq_assoc" in "Theorems"

-- INVERSE SEMIGROUP THEOREMS

/--
For all $a$ in an inverse semigroup $S$ there exists a unique element $a⁻¹$ satisfying $a * a⁻¹ * a = a$.
-/
TheoremDoc MyInvSemigroup.mul_inv_mul as "mul_inv_mul" in "Axioms"

/--
For all $a$ in an inverse semigroup $S$ there exists a unique element $a⁻¹$ satisfying $a⁻¹ * a * a⁻¹ = a⁻¹$.
-/
TheoremDoc MyInvSemigroup.inv_mul_inv as "inv_mul_inv" in "Axioms"

/--
Let $S$ be an inverse semigroup and let $a, b ∈ S$. Let $x = (a * b)⁻¹$. Then $b * x * a$ is an idempotent.
-/
TheoremDoc MyInvSemigroup.inv_prod_idempotent as "inv_prod_idempotent" in "Theorems"

-- MONOID THEOREMS

/--
In a monoid $M$, $e$ denotes the identity element.
-/
TheoremDoc MyMonoid.e as "e" in "Axioms"

/--
For all elements $a$ in a monoid $M$, $e * a = a$, where $e$ is the **identity element**.
-/
TheoremDoc MyMonoid.id_mul as "id_mul" in "Axioms"

/--
For all elements $a$ in a monoid $M$, $a * e = a$, where $e$ is the **identity element**.
-/
TheoremDoc MyMonoid.mul_id as "mul_id" in "Axioms"

/--
The identitiy element of a monoid is unqiue.
-/
TheoremDoc MyMonoid.id_unique as "id_unique" in "Monoid"

-- GROUP THEOREMS

/--
For all elements $a$ in a group $G$, $a * a⁻¹ = e$, where $e$ is the identity element.
-/
TheoremDoc MyGroup.mul_inv as "mul_inv" in "Axioms"

/--
For all elements $a$ in a group $G$, $a ⁻¹ * a = e$, where $e$ is the identity element.
-/
TheoremDoc MyGroup.inv_mul as "inv_mul" in "Axioms"

-- Level theorems below, axioms as theorems above:

/--
For all elements $a$ in a group $G$, $(a⁻¹)⁻¹ = a$.
-/
TheoremDoc MyGroup.inv_inv as "inv_inv" in "Theorems"

/--
Le $G$ be a group and let $a, b ∈ G$. If $a * b = b$ then $a = e$.
-/
TheoremDoc MyGroup.mul_left_eq_self as "mul_left_eq_self" in "Theorems"

/--
Let $G$ be a group and let $a, b, x ∈ G$. If $x * a = b$ then $x = b * a⁻¹$.
-/
TheoremDoc MyGroup.eq_mul_inv_of_mul_eq as "eq_mul_inv_of_mul_eq" in "Theorems"

/--
Let $G$ be a group and let $a, b ∈ G$. If $a * b = e$ then $a = b⁻¹$.
-/
TheoremDoc MyGroup.eq_inv_of_mul_eq_id as "eq_inv_of_mul_eq_id" in "Theorems"

/--
Let $G$ be a group and let $a, b ∈ G$. If $a * b = e$ then $b = a⁻¹$.
-/
TheoremDoc MyGroup.inv_eq_of_mul_eq_id as "inv_eq_of_mul_eq_id" in "Group"

/--
Let $G$ be a group and let $a, b ∈ G$. Then $(a * b)⁻¹ = b⁻¹ * a⁻¹$$.
-/
TheoremDoc MyGroup.product_inv as "product_inv" in "Theorems"

/--
This theorem states that for elements $a, x, y ∈ G $.
If $a * x = a * y$ is true, then $x = y$.
-/
TheoremDoc MyGroup.mul_left_cancel as "mul_left_cancel" in "Theorems"

/--
Let $G$ be a group and let $a, b, x ∈ G$. If $x = b * a⁻¹$ then $a * x = b$.
-/
TheoremDoc MyGroup.mul_eq_of_eq_inv_mul as "mul_eq_of_eq_inv_mul" in "Theorems"

/--
Let $G$ be a group. If, for all $x ∈ G$, $x ^ 2 = e$ then $G$ is a commutative group.
-/
TheoremDoc MyGroup.mul_comm_of_sq_eq_one as "mul_comm_of_sq_eq_one" in "Theorems"
