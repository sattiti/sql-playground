-- UNION, INTERCET, EXCEPT

-- 注意事項:
-- 両方のレコードの列数は同じ数であること。
-- レコードの列のデータ型が一致していること。
-- ORDER BY 句は最後の一つだけ。

-- UNION(和
-- 2つのテーブルにあるレコードを集合した結果を得る。
-- 複数の SELECT 結果を一つにして表示する。
-- UNION (重複なし)
-- UNION ALL (重複あり)
SELECT TB1.COL1, TB1.COL2
  FROM TB1
UNION [ALL]
SELECT TB2.COL1, TB2.COL2
  FROM TB2
;


-- INTERSECT(交差
-- 共通の部分だけ結果として表示する。
-- INTERCET (重複なし)
-- INTERCET ALL (重複なし)
SELECT TB1.COL1, TB1.COL2
  FROM TB1
INTERSECT [ALL]
SELECT TB2.COL1, TB2.COL2
  FROM TB2
;


-- EXCEPT(差
-- 共通の部分を差し引いた結果を表示する。
-- EXCEPT (重複なし)
-- EXCEPT ALL (重複なし)
SELECT TB1.COL1, TB1.COL2
  FROM TB1
EXCEPT [ALL]
SELECT TB2.COL1, TB2.COL2
  FROM TB2
;