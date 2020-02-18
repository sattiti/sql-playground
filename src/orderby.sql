-- Order by
-- 複数カラムをソートする場合、右から左順にソートして行く。
-- SORT BY COUNT(*) のように集約関数の使用も可能。
SELECT col1, col2, ...
  FROM TB_NAME
  WHERE CONDITIONS
  ORDER BY col1 ASC/DESC
;

-- Limit offset
SELECT col1, col2, ...
  FROM TB_NAME
  WHERE CONDITIONS
  ORDER BY col1 ASC/DESC
  LIMIT NUM_LIMIT
  OFFSET NUM_OFFSET
;

