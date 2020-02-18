-- GROUP BY
-- Grouping rows that have the same value in the column specified.
-- 指定したカラムのデータをグループ化する。
-- AS でつけた別名は使えない。
-- 結果の表示順序はソートできない。
-- WHERE 句に集約関数を書けない。
SELECT COUNT(COL1) AS NEW_COL1
  FROM
    TB
  WHERE
    CONSTRAINT_EXPRESSION
  GROUP BY
    COL
;


-- ROLLUP 巻き上げる。合計を一度に求められる。{{{
SELECT col1, col2, ...
  SUM(col1) AS SUM_alias
  FROM t1 AS t1_alias
  GROUP BY
    ROLLUP(col1, ...);
-- }}}