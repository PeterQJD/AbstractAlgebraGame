import GameServer.Commands


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
