-- GROUP BY {{{
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
-- }}}


-- GROUPING 演算子 {{{
-- ROLLUP
-- 巻き上げる。
-- グループしたカラムの合計、小計を一度に求められることができる。
SELECT COL1, COL2, ..
  FROM TB
  GROUP BY ROLLUP(COL1, COL2, ..
;
-- }}}

-- CUBE {{{
-- n次元のすべての可能な組み合わせの合計値を求めることができる。
-- 2^n (nはキーの数)
SELECT COL1, COL2, ..
  FROM TB
  GROUP BY CUBE(COL1, COL2, ..
;
-- }}}

-- GROUPING SETS {{{
-- 部分的な組み合わせの合計値を求めることができる。
SELECT COL1, COL2, ..
  FROM TB
  GROUP BY GROUPING SETS(COL1, COL2, ..
;
-- }}}