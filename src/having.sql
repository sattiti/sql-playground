-- HAVING
-- WHERE より実行順が低い
-- 1. FROM
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT
-- 6. ORDER BY
-- HAVING は GROUP BY で集合した内容に対して条件を指定する。
-- 定数 | 集約関数 | GROUP BY で指定したカラム名、この3つしか指定できない。

SELECT COL
  FROM
    TB
  WHERE
    CONDITION
  GROUP BY
    COL
  HAVING
    定数 | 集約関数 | GROUP BY で指定したカラム名
;
