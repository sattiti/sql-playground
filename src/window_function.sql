-- ウィンドウ関数
-- OLAP (OnLine Analytical Processing)
-- データベースを使ってリアルタイムでにデータ分析をする。
-- レコードを集約せず、入力と同じ数のレコードを返す。
-- PARTITION BY 句に指定した COL をもとにレコードを分割する。


-- window 関数として使える代表的な関数。
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


-- FRAME 句(開始点と終了点の指定)
-- {RANGE |ROW}
-- {BETWEEN .. AND ..}

-- UNBOUNDED PRECEDING 先頭の行(終了点では使用不可)
-- UNBOUNDED FOLLOWING 末尾の行(開始点では使用不可)
-- CURRENT ROW 現在行
-- n PRECEDING 現在行より n 行前まで、RANGE の場合は、n 値の前。
-- n FOLLOWING 現在行より n 行後まで、RANGE の場合は、 n 値の後。
-- ROWS 2 PRECEDING 2行前までという意味。

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