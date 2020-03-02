-- WHERE 句に使えない。
-- COUNT(*)
-- COUNT(COLUMN)
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

-- NULL を値に変換。
-- COALESCE(str1, str2)