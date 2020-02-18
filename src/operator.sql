-- Operator

-- 比較演算子 {{{
-- =           equal
-- <>, !=      not equal
-- <           less then
-- <=          less then equal
-- >           greater then
-- >=          greater then equal
-- }}}

-- LIKE {{{
-- search for a pattern
SELECT * FROM {TB}
  WHERE {COL} LIKE ‘str%’;
-- }}}

-- IN

-- BETWEEN .. AND .. {{{
-- between a certain range
SELECT {COL1}, {COL2}
  FROM {TB}
  WHERE {COL} BETWEEN val1 AND val2;
-- }}}

-- EXISTS {{{
-- IS NULL, IS NOT NULL
-- IN
-- EXISTS
-- }}}

-- 論理演算子 {{{
-- AND
-- OR
-- NOT
-- }}}

-- Predicate 述語 {{{
-- % 0以上の任意文字
-- _ 任意の1文字
-- }}}

-- NULL 比較演算子 {{{
-- IS NULL
-- IS NOT NULL
-- }}}