-- UNION (重複なし)
-- UNION ALL(重複あり)
-- 複数の SELECT 結果を一つにして表示する。

SELECT 1 AS NUM;
UNION
SELECT 2 AS NUM;

-- UNION 和
SELECT {COL1}, {COL2}
  FROM {TB1}
UNION [ALL]
SELECT {COL1}, {COL2}
  FROM {TB2};

-- INTERSECT 交差
-- EXCEPT 差
-- 重複行を残すには ALL オプションをつける。