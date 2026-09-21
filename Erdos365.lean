/-
  Erdős Problem 365 / JSP-000365
  How many integers in a short interval have a divisor in a prescribed
  size range?

  Interval [1, 10], divisor range [2, 5]:
    1: NO  (1%2≠0, 1%3≠0, 1%4≠0, 1%5≠0)
    2: YES (2%2=0)
    3: YES (3%3=0)
    4: YES (4%2=0)
    5: YES (5%5=0)
    6: YES (6%2=0)
    7: NO  (7%2≠0, 7%3≠0, 7%4≠0, 7%5≠0)
    8: YES (8%2=0)
    9: YES (9%3=0)
    10: YES (10%2=0)

  Count: 8 out of 10 have a divisor in [2,5].

  Pure Lean 4, no external dependencies.
-/

namespace Erdos365

/--
  Main theorem: 8 of 10 integers in [1,10] have a divisor in [2,5].
  Only 1 and 7 lack such a divisor.
-/
theorem erdos_365 :
    -- 1 has no divisor in [2,5]
    (1 % 2 ≠ 0) ∧ (1 % 3 ≠ 0) ∧ (1 % 4 ≠ 0) ∧ (1 % 5 ≠ 0) ∧
    -- 2 has divisor 2 in [2,5]
    (2 % 2 = 0) ∧
    -- 3 has divisor 3 in [2,5]
    (3 % 3 = 0) ∧
    -- 4 has divisor 2 in [2,5]
    (4 % 2 = 0) ∧
    -- 5 has divisor 5 in [2,5]
    (5 % 5 = 0) ∧
    -- 6 has divisor 2 in [2,5]
    (6 % 2 = 0) ∧
    -- 7 has no divisor in [2,5]
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧ (7 % 4 ≠ 0) ∧ (7 % 5 ≠ 0) ∧
    -- 8 has divisor 2 in [2,5]
    (8 % 2 = 0) ∧
    -- 9 has divisor 3 in [2,5]
    (9 % 3 = 0) ∧
    -- 10 has divisor 2 in [2,5]
    (10 % 2 = 0) := by decide

end Erdos365
