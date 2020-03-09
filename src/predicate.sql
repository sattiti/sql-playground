-- Predicate

-- 比較演算子 {{{
-- =           equal
-- <>, !=      not equal
-- <           less then
-- <=          less then equal
-- >           greater then
-- >=          greater then equal
-- }}}

-- predicate logic (述語) {{{
-- LIKE
-- search for a pattern
SELECT * FROM {TB}
  WHERE {COL} LIKE ‘str%’;

-- DISITINCT
-- 重複除外

-- BETWEEN .. AND ..
-- between a certain range
SELECT {COL1}, {COL2}
  FROM {TB}
  WHERE {COL} BETWEEN val1 AND val2;


-- IS NULL
-- IS NOT NULL

-- IN
-- NOT IN

-- EXISTS
-- NOT EXISTS

-- 論理演算子
-- AND
-- OR
-- NOT

-- ALL
-- ANY

-- %
-- 0以上の任意文字
-- _
-- 任意の1文字

-- }}}