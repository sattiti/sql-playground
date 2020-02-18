-- HAVING
-- WHERE より実行順が低い
-- 1. FROM
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT
-- 6. ORDER BY

SELECT COL
  FROM
    TB
  WHERE
    CONDITION
  GROUP BY
    COL
  HAVING
    GROUP_CONDITION
;