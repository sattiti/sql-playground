/* ウィンドウ関数 */
-- OLAP (OnLine Analytical Processing)
-- データベースを使ってリアルタイムでにデータ分析をする。
-- ROWS 2 PRECEDING 2行前までという意味
-- PRECEDING 〜前まで
-- FOLLOWING 〜後まで
<WINDOW_FUNCTION> OVER
  (PARTITION BY col_name ORDER BY col_name ROWS 2 PRECEDING)
-- SELECT 句のみ使える。