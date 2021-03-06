-- window 関数 {{{
-- window 関数の実態はソート。
-- window 関数は OLAP (OnLine Analytical Processing)関数とも呼ばれてる。
-- データベースを使ってリアルタイムでデータ分析をする。
-- レコードを集約せず、入力と同じ数のレコードを返す。
-- }}}

-- window 関数の構成 {{{
-- PARTITION BY
-- レコード集合を分割する。

-- ORDER BY
-- レコードの順序付け。

-- FRAME
-- カーソル機能。カレントレコードを中心したレコード集合の範囲を定義する。(開始点と終了点の指定)
-- ROWS                移動単位を行で設定する。
-- RANGE               移動単位を列の値で設定する。基準となる列は ORDER BY 句で指定された列。
-- UNBOUNDED PRECEDING 先頭の行(終了点では使用不可)
-- UNBOUNDED FOLLOWING 末尾の行(開始点では使用不可)
-- CURRENT ROW         現在行
-- n PRECEDING         現在行より n 行前まで、RANGE の場合は、n 値の前。
-- n FOLLOWING         現在行より n 行後まで、RANGE の場合は、 n 値の後。

-- example:
-- ROWS BETWEEN 2 FOLLOWING AND 2 FOLLOWING 2行先。
-- ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING 1行前。
--}}}


-- window 関数として使える代表的な関数 {{{
-- 1. 集約関数
-- SUM()
-- AVG()
-- COUNT()
-- MAX()
-- MIN()

-- 2. window 専用関数
-- RANK()
-- DENSE_RANK()
-- ROW_NUMBER()
-- }}}

-- 無名 WINDOW FUNCTION{{{
SELECT
  FUNCTION(COL) OVER(
    PARTITION BY
      COL
    ORDER BY
      COL
    ROWS 2 PRECEDING
  ) AS ALIAS_COL,
  FUNCTION(COL) OVER(
    PARTITION BY
      COL
    ORDER BY
      COL
    ROWS 2 PRECEDING
  ) AS ALIAS_COL
  FROM TB
  ORDER BY COL
;
-- }}}

-- 名前付きウィンドウ関数 {{{
SELECT
  COL1, COL2, ...
  FUNCTION(COL1) OVER WINDOW_NAME AS ALIAS1,
  FUNCTION(COL2) OVER WINDOW_NAME AS ALIAS2
  FROM TB
  WINDOW WINDOW_NAME AS(
    PARTITION BY
      COL
    ORDER BY
      COL
    ROWS 2 PRECEDING
  )
;
-- }}}