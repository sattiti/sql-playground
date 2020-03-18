-- WHERE 句に使えない。
-- COUNT(*)
-- within NULL result.

-- COUNT(COLUMN)
-- without NULL result.

-- SUM(COLUMN)
-- AVG(COLUMN)
-- MAX(COLUMN)
-- MIN(COLUMN)
-- IFNULL(COLUMN, 0)

SELECT COUNT(COL1) AS NEW_COL1
  FROM
    TB
  WHERE
    CONSTRAINT_EXPRESSION
  GROUP BY
    COL
;

-- 重複値を除外して集約関数を使う
SELECT
  COUNT(DISTINCT COLUMN)
  FROM {TABLE}
;

-- ABS()
-- MOD(a, b)
-- ROUND(n, m)
-- LENGTH(str)
-- LOWER(str)
-- UPPER(str)
-- REPLACE(str, a, b)
-- SUBSTRING(str, FROM, TO)

-- CONCAT {{{
str1 || str2 AS NEW_STR;

-- SQLServer
str1 + str2 AS NEW_STR;

-- mySQL
CONCAT(str1, str2) AS NEW_STR;
-- }}}

-- RANK()
-- DENSE_RANK() 同順位があっても、順位が飛ばない。
-- ROW_NUMBER() 同順位があっても、連番で続く。
-- GROUPING()   NULL なら、1 それ以外 0

-- CURRENT_DATE;
-- CURRENT_TIME;
-- CURRENT_TIMESTAMP;
-- YEAR
-- MONTH
-- DAY
-- HOUR
-- MINUTE
-- SECOND
-- EXTRACT(YEAR, FROM CURRENT_TIMESTAMP) AS year;

-- CAST(val AS type) AS var;

-- NULL を別の値に置換。
-- COALESCE(COL, NEW_VAL)

-- よく使う {{{
-- COUNT(DISTINCT COL) = COUNT(COL)
-- COL の値が一意である。

-- COUNT(*) = COUNT(COL)
-- COL に NULL が存在しない。

-- COUNT(*) = MAX(COL)
-- COL は歯抜けのない連番。(開始値は1)

-- COUNT(*) = MAX(COL) - MIN(COL) + 1
-- COL は歯抜けのない連番。(開始値は任意の整数)

-- MIN(COL) = MAX(COL)
-- COL の値は1つかまたは NULL である。

-- MIN(COL) * MAX(COL) > 0
-- 全てのCOL_X の符号が同じである。

-- MIN(COL) * MAX(COL) < 0
-- 最大値の符号が正で、最小値の符号は負である。

-- MAX(ABS(COL)) = 0
-- COL は少なくても1つのゼロを含む。

-- MIN(COL - 定数) = - MAX(COL - 定数)
-- COL の最大値と最小値が指定した定数から同じ幅の距離にある。
-- }}}