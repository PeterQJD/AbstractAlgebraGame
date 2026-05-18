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

-- INVERSE SEMIGROUP THEOREMS

/--
For all $x$ in an inverse semigroup $S$ there exists a unique element $x⁻¹$ satisfying $x * x⁻¹ * x = x$.
-/
TheoremDoc MyInvSemigroup.mul_inv as "mul_inv" in "Axioms"

/--
For all $x$ in an inverse semigroup $S$ there exists a unique element $x⁻¹$ satisfying $x⁻¹ * x * x⁻¹ = x⁻¹$.
-/
TheoremDoc MyInvSemigroup.inv_mul as "inv_mul" in "Axioms"

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
This theorem states that: if a monoid contains two elements $e₁$ and $e₂$ that have the identity property.
Then those elements are equal, hence the `identity element` within a monoid is `unique`.
-/
TheoremDoc MyMonoid.id_unique as "id_unique" in "Monoid"

-- GROUP THEOREMS

/--
This **Group axiom** states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g⁻¹ * g = e$ (where e is the identity element in the group G).

## Please note:
The inverse is applied multiplicativly on the left, hence mul_left_inv.
-/
TheoremDoc MyGroup.mul_left_inv as "mul_left_inv" in "Group"

/--
This **Group axiom** states that for every element $g ∈ G$, there exists an inverse element $g⁻¹ ∈ G$
such that $g * g⁻¹ = e$ (where e is the identity element in the group G)
q
## Please note:
This result allows us to apply inverses on the right.
-/
TheoremDoc MyGroup.mul_right_inv as "mul_right_inv" in "Group"

/--
Multiplication (i.e., the binary operation) is `associative` if for all $a, b, c$, we have $(a * b) * c = a * (b * c)$.
-/
TheoremDoc MyGroup.mul_assoc as "mul_assoc" in "Group"

/--
This **Group axiom** states that there exists an element $e ∈ G$ which has the following property:
$e * g = g $ for all $g ∈ G$

In practice this is used to apply the identity on the left.

### Important note
This element $e$ is denoted as $1$ in the editor.
-/
TheoremDoc MyGroup.one_mul as "one_mul" in "Group"


/--
This **Group axiom** states that there exists an element $e ∈ G$ which has the following property:
$g * e = g $ for all $g ∈ G$

In practice this is used to apply the identity on the right.

### Important note
This element $e$ is denoted as $1$ in the editor.
-/
TheoremDoc MyGroup.mul_one as "one_mul" in "Group"


-- Level theorems below, axioms as theorems above:

/--
This theorem states that for an element $a ∈ G$.
The inverse of the inverse element of $a$ is equal to $a$.
More compactly put, $(a⁻¹)⁻¹ = a$.
-/
TheoremDoc MyGroup.inv_inv as "inv_inv" in "Group"

/--
This theorem states that, given a group $G$ with elements $a, b ∈ G$.
If $a * b = b$, then $a = 1$.
Where $1$ is the identity element in $G$
-/
TheoremDoc MyGroup.mul_left_eq_self as "mul_left_eq_self" in "Group"

/--
This theorem states that, for elements $a,b,c ∈ G$.
Assuming that $a * c = b$. It follows that $a = b * c⁻¹$.
-/
TheoremDoc MyGroup.eq_mul_inv_of_mul_eq as "eq_mul_inv_of_mul_eq" in "Group"


/--
This theorem states that, for elements $a,b ∈ G$.
Assuming the product $a * b = 1$, then it follows that $a = b⁻¹$.

Simply put, if $a$ reduces $b$ to the identity, then $a$ is the inverse of $b$.
-/
TheoremDoc MyGroup.eq_inv_of_mul_eq_one as "eq_inv_mul_eq_one" in "Group"

/--
This theorem states that, for elements $a,b ∈ G$.
Assuming the product $a * b = 1$, it follows that $a⁻¹ = b$.

Simply put, if $b$ reduces $a$ to the identity, then $b$ is the inverse of $a$.
-/
TheoremDoc MyGroup.inv_eq_of_mul_eq_one as "inv_eq_of_mul_eq_one" in "Group"

/--
This theorem pertains to the inverse of a product of two elements in a group.
It states that $(a * b)⁻¹ = b⁻¹ * a⁻¹$ for all elements $a,b ∈ G$.
-/
TheoremDoc MyGroup.product_inv as "product_inv" in "Group"

/--
This theorem states that for elements $a, x, y ∈ G $.
If $a * x = a * y$ is true, then $x = y$.
-/
TheoremDoc MyGroup.mul_left_cancel as "mul_left_cancel" in "Group"

/--
This theorem states that for elements $a, x, y ∈ G$.
If $x = a⁻¹ * y$ is true. Then
it follows that $a * b = y$.
-/
TheoremDoc MyGroup.mul_eq_of_eq_inv_mul as "mul_eq_of_eq_inv_mul" in "Group"

/--
This theorem states that, for a group "G" with the property, $∀ x ∈ G, x * x = 1$.
Then such a group must be Abelian (the binary operation is commutative).
-/
TheoremDoc MyGroup.order_of_all_two_abelian as "order_of_all_two_implies_abelian" in "Group"
